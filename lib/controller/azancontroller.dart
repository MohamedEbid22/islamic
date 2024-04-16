import 'dart:async';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';
import 'package:islamic/core/constant/defoalte.dart';
import 'package:adhan/adhan.dart';

class AzanController extends GetxController {
  late final Coordinates city;
  late final DateTime nyDate;
  late final DateComponents nyDateComponents;
  late final CalculationParameters nyParams;
  late final Madhab madhab;
  late final PrayerTimes nyPrayerTimes;
  late final String fajr;
  late final String sunrise;
  late final String dhuhr;
  late final String asr;
  late final String maghrib;
  late final String isha;
  late final Prayer nextPrayer;
  bool adhan = notif;

  AzanController() {
    city = dropdownValue == "القاهرة"
        ? Coordinates(30.058056, 31.228889)
        : dropdownValue == "الأسكندرية"
            ? Coordinates(31.198, 29.9192)
            : dropdownValue == 'شبرا الخيمة'
                ? Coordinates(30.1231, 31.2565)
                : dropdownValue == "الفيوم"
                    ? Coordinates(29.3084, 30.8428)
                    : dropdownValue == "طنطا"
                        ? Coordinates(30.7865, 31.0004)
                        : dropdownValue == "المنصورة"
                            ? Coordinates(31.0364, 31.3807)
                            : dropdownValue == "أسيوط"
                                ? Coordinates(27.1827, 31.1693)
                                : dropdownValue == "الزقازيق"
                                    ? Coordinates(30.5886, 31.501)
                                    : dropdownValue == "بنها"
                                        ? Coordinates(30.4667, 31.1837)
                                        : dropdownValue == "بورسعيد"
                                            ? Coordinates(31.2611, 32.3019)
                                            : dropdownValue == "السويس"
                                                ? Coordinates(29.9737, 32.5263)
                                                : dropdownValue == "دمياط"
                                                    ? Coordinates(
                                                        31.4165, 31.8133)
                                                    : dropdownValue ==
                                                            'كفر الشيخ'
                                                        ? Coordinates(
                                                            31.1093, 30.9361)
                                                        : dropdownValue ==
                                                                'المحلة الكبرى'
                                                            ? Coordinates(
                                                                30.9615,
                                                                30.8005)
                                                            : dropdownValue ==
                                                                    "المنيا"
                                                                ? Coordinates(
                                                                    28.1167,
                                                                    30.7500)
                                                                : dropdownValue ==
                                                                        "سوهاج"
                                                                    ? Coordinates(
                                                                        26.5550,
                                                                        31.6948)
                                                                    : dropdownValue ==
                                                                            "الإسماعيلية"
                                                                        ? Coordinates(
                                                                            30.5910,
                                                                            32.2614)
                                                                        : dropdownValue ==
                                                                                "أسوان"
                                                                            ? Coordinates(24.0889,
                                                                                32.8998)
                                                                            : Coordinates(30.201944900509396,
                                                                                29.2);

    nyDate = DateTime.now();
    adhan = false;
    nyDateComponents = DateComponents.from(nyDate);
    nyParams = CalculationMethod.muslim_world_league.getParameters();
    madhab = Madhab.hanafi;
    nyPrayerTimes = PrayerTimes(city, nyDateComponents, nyParams);
    fajr = DateFormat('hh:mm').format(nyPrayerTimes.fajr);
    sunrise = DateFormat('hh:mm').format(nyPrayerTimes.sunrise);
    dhuhr = DateFormat('hh:mm').format(nyPrayerTimes.dhuhr);
    asr = DateFormat('hh:mm').format(nyPrayerTimes.asr);
    maghrib = DateFormat('hh:mm').format(nyPrayerTimes.maghrib);
    isha = DateFormat('hh:mm').format(nyPrayerTimes.isha);
    nextPrayer = nyPrayerTimes.nextPrayer();
  }

  String arabicPrayer() {
    switch (nextPrayer) {
      case Prayer.fajr:
        return 'الفجر';
      case Prayer.sunrise:
        return 'الشروق';
      case Prayer.dhuhr:
        return 'الظهر';
      case Prayer.asr:
        return 'العصر';
      case Prayer.maghrib:
        return 'المغرب';
      case Prayer.isha:
        return 'العشاء';
      case Prayer.none:
        return '';
      default:
        return '';
    }
  }

  Stream<String> remainsTime() async* {
    while (true) {
      Prayer prayer = nyPrayerTimes.nextPrayer();
      if (prayer == Prayer.none) {
        yield "لا يوجد ";
        await Future.delayed(Duration(minutes: 1));
      } else {
        DateTime? nextPrayerTime = nyPrayerTimes.timeForPrayer(prayer);
        DateTime now = DateTime.now();
        Duration remains = nextPrayerTime!.difference(now);
        yield condoHour(remains.inSeconds);
        await Future.delayed(Duration(seconds: 1));
      }
    }
  }

  String condoHour(int seconds) {
    int minutes = (seconds ~/ 60) % 60;
    int hours = (seconds ~/ 3600);
    seconds %= 60;

    String hoursString = hours.toString().padLeft(2, '0');
    String minutesString = minutes.toString().padLeft(2, '0');
    String secondsString = seconds.toString().padLeft(2, '0');

    return "$hoursString:$minutesString:$secondsString";
  }

  StreamController<String> _remainingTimeController =
      StreamController<String>();

  Stream<String> get remainingTimeStream => _remainingTimeController.stream;

  void calculateRemainingTime() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      Prayer nextPrayer = nyPrayerTimes.nextPrayer();
      if (nextPrayer != Prayer.none) {
        DateTime? nextPrayerTime = nyPrayerTimes.timeForPrayer(nextPrayer);
        DateTime now = DateTime.now();
        Duration remains = nextPrayerTime!.difference(now);
        _remainingTimeController.add(condoHour(remains.inSeconds));
      }
    });

    @override
    void onClose() {
      _remainingTimeController.close();
      super.onClose();
    }
  }
}
