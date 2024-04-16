import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:islamic/controller/azancontroller.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/core/constant/defoalte.dart';
import 'package:islamic/core/function/hajey.dart';
import 'package:islamic/view/screen/Home/notification_manger/notification_manager.dart';
import 'package:islamic/view/screen/Home/objects/objects.dart';

class AzanPage extends StatefulWidget {
  const AzanPage({super.key});

  @override
  State<AzanPage> createState() => _AzanPageState();
}

class _AzanPageState extends State<AzanPage> {
  var _today = HijriCalendar.now();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return StreamBuilder(
      stream: AzanController().remainsTime(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (snapshot.hasError) {
          return Text(
            "Error: ${snapshot.error}",
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: height * 0.028,
              fontFamily: 'Changa',
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          );
        }

        var controller = AzanController();
        if (!controller.adhan) {
          AdhanReminders adhanReminders = AdhanReminders(
            coordinates: controller.city,
            Params: controller.nyParams,
            fager: const AdhanForWakto(isAdhanOn: true),
            doher: const AdhanForWakto(isAdhanOn: true),
            asr: const AdhanForWakto(isAdhanOn: true),
            mornaning: const AdhanForWakto(isAdhanOn: true),
            evnaning: const AdhanForWakto(isAdhanOn: true),
            magreb: const AdhanForWakto(isAdhanOn: true),
            asha: const AdhanForWakto(isAdhanOn: true),
          );
          adhanReminders.initialization();
          NotificationManager notificationManager = NotificationManager();
          notificationManager.initialize(context);
          notificationManager.cancelNotification();

          for (var adhanReminder in adhanReminders.adhanReminders) {
            notificationManager.setNotification(
                time: adhanReminder.time,
                id: adhanReminder.id,
                titel: adhanReminder.titel,
                body: adhanReminder.body);
            controller.adhan = true;
          }
        }

        return Container(
          height: height * 0.25,
          width: width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(1.5, 3),
              ),
            ],
            image: const DecorationImage(
              image: AssetImage('asset/images/gama.jpg'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [primaryColor, s4color],
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.format_list_bulleted_rounded,
                          color: Color.fromARGB(255, 255, 200, 0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.02),
                        child: Text(
                          "أوقات الصلاة",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: height * 0.025,
                            fontFamily: 'Changa',
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        _today.hDay.toString() +
                            " " +
                            Month() +
                            " " +
                            _today.hYear.toString(),
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: height * 0.023,
                          fontFamily: 'Changa',
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.date_range_outlined,
                          color: const Color.fromARGB(255, 255, 200, 0),
                          size: height * 0.02,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      StreamBuilder(
                        stream: controller.remainsTime(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "${snapshot.data}",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: height * 0.023,
                                    fontFamily: 'Changa',
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                ),
                                const Text("  "),
                                Text(
                                  controller.arabicPrayer(),
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: height * 0.023,
                                    fontFamily: 'Changa',
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            );
                          } else if (snapshot.hasError) {
                            return Text(
                              "Error: ${snapshot.error}",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontSize: height * 0.028,
                                fontFamily: 'Changa',
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            );
                          } else {
                            return const CircularProgressIndicator();
                          }
                        },
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.access_time_sharp,
                          size: height * 0.02,
                          color: const Color.fromARGB(255, 255, 200, 0),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        dropdownValue,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: height * 0.025,
                          fontFamily: 'Changa',
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_outlined,
                          size: height * 0.024,
                          color: const Color.fromARGB(255, 255, 200, 0),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "العشاء",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * 0.019,
                              fontFamily: 'Changa',
                              fontWeight: FontWeight.bold,
                              color: controller.arabicPrayer() == "العشاء"
                                  ? const Color.fromARGB(255, 255, 200, 0)
                                  : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Text(
                            controller.isha,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * 0.019,
                              fontFamily: 'Changa',
                              fontWeight: FontWeight.bold,
                              color: controller.arabicPrayer() == "العشاء"
                                  ? const Color.fromARGB(255, 255, 200, 0)
                                  : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "المغرب",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * 0.019,
                              fontFamily: 'Changa',
                              fontWeight: FontWeight.bold,
                              color: controller.arabicPrayer() == "المغرب"
                                  ? const Color.fromARGB(255, 255, 200, 0)
                                  : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Text(
                            controller.maghrib,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * 0.019,
                              fontFamily: 'Changa',
                              fontWeight: FontWeight.bold,
                              color: controller.arabicPrayer() == "المغرب"
                                  ? const Color.fromARGB(255, 255, 200, 0)
                                  : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "العصر",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * 0.019,
                              fontFamily: 'Changa',
                              fontWeight: FontWeight.bold,
                              color: controller.arabicPrayer() == "العصر"
                                  ? const Color.fromARGB(255, 255, 200, 0)
                                  : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Text(
                            controller.asr,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * 0.019,
                              fontFamily: 'Changa',
                              fontWeight: FontWeight.bold,
                              color: controller.arabicPrayer() == "العصر"
                                  ? const Color.fromARGB(255, 255, 200, 0)
                                  : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "الظهر",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * 0.019,
                              fontFamily: 'Changa',
                              fontWeight: FontWeight.bold,
                              color: controller.arabicPrayer() == "الظهر"
                                  ? const Color.fromARGB(255, 255, 200, 0)
                                  : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Text(
                            controller.dhuhr,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * 0.019,
                              fontFamily: 'Changa',
                              fontWeight: FontWeight.bold,
                              color: controller.arabicPrayer() == "الظهر"
                                  ? const Color.fromARGB(255, 255, 200, 0)
                                  : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "الفجر",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * 0.019,
                              fontFamily: 'Changa',
                              fontWeight: FontWeight.bold,
                              color: controller.arabicPrayer() == "الفجر"
                                  ? const Color.fromARGB(255, 255, 200, 0)
                                  : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          Text(
                            controller.fajr,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: height * 0.019,
                              fontFamily: 'Changa',
                              fontWeight: FontWeight.bold,
                              color: controller.arabicPrayer() == "الفجر"
                                  ? const Color.fromARGB(255, 255, 200, 0)
                                  : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
