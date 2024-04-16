import 'package:adhan/adhan.dart';

class AdhanForWakto {
  final bool isAdhanOn;
  final String adhanName;
  const AdhanForWakto(
      {this.adhanName = "adhan_by_hafiz_mustafa_ozcan", this.isAdhanOn = true});
}

class AdhanReminders {
  AdhanForWakto fager;
  AdhanForWakto doher;
  AdhanForWakto asr;
  AdhanForWakto magreb;
  AdhanForWakto asha;
  AdhanForWakto mornaning;
  AdhanForWakto evnaning;
  Coordinates coordinates;
  CalculationParameters Params;

  AdhanReminders(
      {this.fager = const AdhanForWakto(),
      this.doher = const AdhanForWakto(),
      this.asr = const AdhanForWakto(),
      this.magreb = const AdhanForWakto(),
      this.asha = const AdhanForWakto(),
      this.mornaning = const AdhanForWakto(),
      this.evnaning = const AdhanForWakto(),
      required this.coordinates,
      required this.Params});

  List<AdhanReminder> adhanReminders = [];

  initialization() {
    for (var i = 0; i < 7; i++) {
      DateTime dateTime = DateTime.now().add(Duration(days: i));
      DateComponents dateComponents =
          DateComponents(dateTime.year, dateTime.month, dateTime.day);
      PrayerTimes prayerTimes =
          PrayerTimes(coordinates, dateComponents, Params);
      if (fager.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
            titel: "الاذان",
            id: 1 + 7 * i,
            adhan: fager.adhanName,
            time: prayerTimes.fajr,
            body: 'حان الان موعد اذان الفجر'));
      }
      if (mornaning.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
            titel: "الاذكار",
            id: 2 + 7 * i,
            adhan: fager.adhanName,
            time: prayerTimes.fajr.add(const Duration(minutes: 60)),
            body: 'اذكار الصباح'));
      }
      if (doher.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
            titel: "الاذان",
            id: 3 + 7 * i,
            adhan: doher.adhanName,
            time: prayerTimes.dhuhr,
            body: 'حان الان موعد اذان الظهر'));
      }
      if (asr.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
            titel: "الاذان",
            id: 4 + 7 * i,
            adhan: asr.adhanName,
            time: prayerTimes.asr,
            body: "حان الان موعد اذان العصر"));
      }
      if (mornaning.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
            titel: "الاذكار",
            id: 5 + 7 * i,
            adhan: fager.adhanName,
            time: prayerTimes.asr.add(const Duration(minutes: 90)),
            body: 'اذكار المساء'));
      }
      if (magreb.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
            titel: "الاذان",
            id: 6 + 7 * i,
            adhan: magreb.adhanName,
            time: prayerTimes.maghrib,
            body: "حان الان موعد اذان المغرب"));
      }
      if (asha.isAdhanOn) {
        adhanReminders.add(AdhanReminder(
            titel: "الاذان",
            id: 7 + 7 * i,
            adhan: asha.adhanName,
            time: prayerTimes.isha,
            body: "حان الان موعد اذان العشاء"));
      }
    }
  }
}

class AdhanReminder {
  int id;
  String adhan;
  String body;
  String titel;
  DateTime time;
  AdhanReminder(
      {required this.id,
      required this.adhan,
      required this.body,
      required this.titel,
      required this.time});
}
