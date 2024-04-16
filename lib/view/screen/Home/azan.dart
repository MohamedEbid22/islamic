import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islamic/core/constant/color.dart';

class AzanPage extends StatefulWidget {
  const AzanPage({super.key});

  @override
  State<AzanPage> createState() => _AzanPageState();
}

final city = Coordinates(31.201944900509396, 29.92214667670505);
final nyDate = DateTime.now();
final nyDateComponents = DateComponents.from(nyDate);
final nyParams = CalculationMethod.muslim_world_league.getParameters();
Madhab madhab = Madhab.hanafi;
final nyPrayerTimes = PrayerTimes(city, nyDateComponents, nyParams);

class _AzanPageState extends State<AzanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [secondaryColor, primaryColor],
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "اوقات الصلاة",
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Rakkas',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: 15,
          width: double.infinity,
          color: primaryColor,
          child: Container(
            height: 15,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.vertical(
                top: Radius.elliptical(
                  MediaQuery.of(context).size.width,
                  50.0,
                ),
              ),
            ),
          ),
        ),
        Text(DateFormat.jm().format(nyPrayerTimes.fajr)),
        Text(DateFormat.jm().format(nyPrayerTimes.sunrise)),
        Text(DateFormat.jm().format(nyPrayerTimes.dhuhr)),
        Text(DateFormat.jm().format(nyPrayerTimes.asr)),
        Text(DateFormat.jm().format(nyPrayerTimes.maghrib)),
        Text(DateFormat.jm().format(nyPrayerTimes.isha))
      ]),
    );
  }
}
