import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:islamic/view/screen/Home/homescreen.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

// Android Initialization Settings
final AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');

// iOS Initialization Settings
final DarwinInitializationSettings initializationSettingsIOS =
    DarwinInitializationSettings(
        requestSoundPermission: true,
        requestBadgePermission: true,
        requestAlertPermission: true,
        onDidReceiveLocalNotification:
            (int id, String? title, String? body, String? payload) async {
          // Handle your notification here
        });

// Combined Initialization Settings
final InitializationSettings initializationSettings = InitializationSettings(
  android: initializationSettingsAndroid,
  iOS: initializationSettingsIOS,
);

class NotificationManager {
  initialize(BuildContext context) async {
    void selectNotification(NotificationResponse response) async {
      final String? payload = response.payload;
      if (payload != null) {
        debugPrint('notification payload: $payload');
        await Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (context) => const HomeScreen()),
        );
      }
    }

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: selectNotification,
    );
  }

  setNotification({
    required DateTime time,
    required int id,
    required String titel,
    required String body,
  }) async {
    tz.initializeTimeZones();
    Duration duration = time.difference(DateTime.now());
    if (!duration.isNegative) {
      await flutterLocalNotificationsPlugin.zonedSchedule(
          id,
          titel,
          body,
          tz.TZDateTime.now(tz.local).add(duration),
          const NotificationDetails(
              android: AndroidNotificationDetails('App_3', 'Adhan App',
                  channelDescription: 'Adhan For Prayer',
                  fullScreenIntent: true,
                  priority: Priority.high,
                  playSound: true,
                  sound: RawResourceAndroidNotificationSound("hejaz")),
              iOS: DarwinNotificationDetails(
                sound: "hejaz_out.caf",
                presentAlert: true,
                presentBadge: true,
                presentSound: true,
              )),
          androidAllowWhileIdle: true,
          payload: "Salat",
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime);
    }
  }

  cancelNotification() {
    flutterLocalNotificationsPlugin.cancelAll();
  }
}
