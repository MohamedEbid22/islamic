import 'package:hijri/hijri_calendar.dart';

var _today = HijriCalendar.now();
Day(int hDay) {
  String day = _today.hDay.toString();
  if (day == "1") {
    day = "١";
  }
  if (day == "2") {
    day = "٢";
  }
  if (day == "3") {
    day = "٣";
  }
  if (day == "4") {
    day = "٤";
  }
  if (day == "5") {
    day = "٥";
  }
  if (day == "6") {
    day = "٦";
  }
  if (day == "7") {
    day = "٧";
  }
  if (day == "8") {
    day = "٨";
  }
  if (day == "9") {
    day = "٩";
  }
  if (day == "10") {
    day = "١٠";
  }
  if (day == "11") {
    day = "١١";
  }
  if (day == "12") {
    day = "١٢";
  }
  if (day == "13") {
    day = "١٣";
  }
  if (day == "14") {
    day = "١٤";
  }
  if (day == "15") {
    day = "١٥";
  }
  if (day == "16") {
    day = "١٦";
  }
  if (day == "17") {
    day = "١٧";
  }
  if (day == "18") {
    day = "١٨";
  }
  if (day == "19") {
    day = "١٩";
  }
  if (day == "20") {
    day = "٢٠";
  }
  if (day == "21") {
    day = "٢١";
  }
  if (day == "22") {
    day = "٢٢";
  }
  if (day == "23") {
    day = "٢٣";
  }
  if (day == "24") {
    day = "٢٤";
  }
  if (day == "25") {
    day = "٢٥";
  }
  if (day == "26") {
    day = "٢٦";
  }
  if (day == "27") {
    day = "٢٧";
  }
  if (day == "28") {
    day = "٢٨";
  }
  if (day == "29") {
    day = "٢٩";
  }
  if (day == "30") {
    day = "٣٠";
  }
  if (day == "31") {
    day = "٣١";
  }
  return day;
}

Month() {
  String month = _today.longMonthName;
  if (month.toString() == "Rabi' Al-Awwal") {
    month = "ربيع الأول";
  }
  if (month.toString() == "Rabi' Al-Thani") {
    month = "ربيع الآخر";
  }
  if (month.toString() == "Jumada Al-Awwal") {
    month = "جمادى الأولى";
  }
  if (month.toString() == "Jumada Al-Thani") {
    month = "جمادى الآخرة";
  }
  if (month.toString() == "Rajab") {
    month = "رجب";
  }
  if (month.toString() == "Sha'aban") {
    month = "شعبان";
  }
  if (month.toString() == "Ramadan") {
    month = "رمضان";
  }
  if (month.toString() == "Shawwal") {
    month = "شوال";
  }
  if (month.toString() == "Dhu Al-Hijjah") {
    month = "ذو الحجة";
  }
  if (month.toString() == "Muharram") {
    month = "محرم";
  }
  if (month.toString() == "Safar") {
    month = "صفر";
  }
  if (month.toString() == "Dhul-Qi'dah") {
    month = "ذو القعدة";
  }
  return month;
}

Year() {
  String year = _today.hYear.toString();
  if (year == "1445") {
    year = "١٤٤٥";
  }
  if (year == "1446") {
    year = "١٤٤٦";
  }
  if (year == "1447") {
    year = "١٤٤٧";
  }
  if (year == "1448") {
    year = "١٤٤٨";
  }
  if (year == "1449") {
    year = "١٤٤٩";
  }
  if (year == "1450") {
    year = "١٤٥٠";
  }
  if (year == "1451") {
    year = "١٤٥١";
  }
  if (year == "1452") {
    year = "١٤٥٢";
  }
  if (year == "1453") {
    year = "١٤٥٣";
  }
  if (year == "1454") {
    year = "١٤٥٤";
  }
  if (year == "1456") {
    year = "١٤٥٦";
  }
  if (year == "1455") {
    year = "١٤٥٥";
  }
  if (year == "1457") {
    year = "١٤٥٧";
  }
  if (year == "1458") {
    year = "١٤٥٨";
  }
  if (year == "1459") {
    year = "١٤٥٩";
  }
  if (year == "1460") {
    year = "١٤٦٠";
  }
  return year;
}
