import 'package:adhan/adhan.dart';

class AdhanForWakto {
  final bool isAdhanOn;
  final String adhanName;

  const AdhanForWakto({this.adhanName = "", this.isAdhanOn = true});
}

class AdhanReminders {
  AdhanForWakto fager;
  AdhanForWakto doher;
  AdhanForWakto asr;
  AdhanForWakto magreb;
  AdhanForWakto asha;
  Coordinates coordinates;
  CalculationParameters Params;
  AdhanReminders({
    this.fager = const AdhanForWakto(),
    this.doher = const AdhanForWakto(),
    this.asr = const AdhanForWakto(),
    this.magreb = const AdhanForWakto(),
    this.asha = const AdhanForWakto(),
    required this.coordinates,
    required this.Params,
  });
  List<AdhanReminder> adhanReminders = [];
  Initialization() {
    for (var i = 0; i < 7; i++) {
      DateTime dateTime = DateTime.now().add(Duration(days: i));
      DateComponents dateComponents =
          DateComponents(dateTime.year, dateTime.month, dateTime.day);
      PrayerTimes nyPrayerTimes =
          PrayerTimes(coordinates, dateComponents, Params);
      if (fager.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
          id: 1 + 5 * i,
          title: "اذان",
          body: "حان الان موعد اذان الفجر",
          time: nyPrayerTimes.fajr,
        ));
      }
      if (doher.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
          id: 2 + 5 * i,
          title: "اذان",
          body: "حان الان موعد اذان الظهر",
          time: nyPrayerTimes.dhuhr,
        ));
      }
      if (asr.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
          id: 3 + 5 * i,
          title: "اذان",
          body: "حان الان موعد اذان العصر",
          time: nyPrayerTimes.asr,
        ));
      }
      if (magreb.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
          id: 4 + 5 * i,
          title: "اذان",
          body: "حان الان موعد اذان المغرب",
          time: nyPrayerTimes.maghrib,
        ));
      }
      if (asha.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
          id: 5 + 5 * i,
          title: "اذان",
          body: "حان الان موعد اذان العشاء",
          time: nyPrayerTimes.isha,
        ));
      }
    }
  }
}

class AdhanReminder {
  int id;
  String title;
  String body;
  DateTime time;

  AdhanReminder({
    required this.id,
    required this.title,
    required this.body,
    required this.time,
  });
}
