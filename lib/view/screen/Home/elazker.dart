import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:islamic/controller/elhdescontroller.dart';
import 'package:islamic/core/constant/AppRoute.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/view/screen/Home/tasbeh.dart';
import 'package:islamic/view/widget/Home/listofzekr.dart';

class ElAzker extends StatefulWidget {
  const ElAzker({super.key});

  @override
  State<ElAzker> createState() => _ElAzkerState();
}

class _ElAzkerState extends State<ElAzker> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
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
          title: Text(
            "الاذكار",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: height * 0.046,
              fontFamily: 'Rakkas',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: GetBuilder<ElhdesPageController>(
            init: ElhdesPageController(),
            builder: (controller) => Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 15,
                        width: double.infinity,
                        color: primaryColor,
                        child: Container(
                          height: 15,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.elliptical(
                                MediaQuery.of(context).size.width,
                                50.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * .03,
                      ),
                      Container(
                        height: height * .05,
                        width: width * .85,
                        decoration: BoxDecoration(
                            color: greycolor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.001,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    controller.trueChange();
                                  },
                                  child: Container(
                                    height: height * .05,
                                    width: width * .425,
                                    decoration: BoxDecoration(
                                      color: controller.active == true
                                          ? primaryColor
                                          : null,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "التسابيح",
                                        style: TextStyle(
                                          fontSize: height * 0.023,
                                          fontFamily: 'Changa',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {
                                    controller.falseChange();
                                  },
                                  child: Container(
                                    height: height * .05,
                                    width: width * .425,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: controller.active == false
                                          ? primaryColor
                                          : null,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "الأذكار",
                                        style: TextStyle(
                                          fontSize: height * 0.023,
                                          fontFamily: 'Changa',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * .005,
                      ),
                      Expanded(
                          child: controller.active == false
                              ? ListView(
                                  children: [
                                    ListOfAzker(
                                      text: "أذكار الصباح",
                                      onTap: () {
                                        Get.toNamed(AppRoute.MorningZker);
                                      },
                                      imag: "asset/images/islam-2.png",
                                    ),
                                    ListOfAzker(
                                        text: "أذكار المساء",
                                        imag: "asset/images/moon-4.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.EveningAzkar);
                                        }),
                                    ListOfAzker(
                                        text: "أذكار الصلاة ",
                                        imag: "asset/images/salah.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.SalaaZekr);
                                        }),
                                    ListOfAzker(
                                        text: "أذكار النوم",
                                        imag: "asset/images/sleeping.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.NoomZekr);
                                        }),
                                    ListOfAzker(
                                        text: "أذكار الإستيقاظ",
                                        imag: "asset/images/alarm.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.EstykazeZekr);
                                        }),
                                    ListOfAzker(
                                        text: "أذكار متفرقة",
                                        imag: "asset/images/islam-3.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.MotafarekZekr);
                                        }),
                                    ListOfAzker(
                                        text: "أذكار الآذان",
                                        imag: "asset/images/call.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.AzenZekr);
                                        }),
                                    ListOfAzker(
                                        text: "أذكار المسجد",
                                        imag: "asset/images/prophet.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.Masgedzekr);
                                        }),
                                    ListOfAzker(
                                        text: "أذكار الوضوء",
                                        imag: "asset/images/wudhu.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.WedoaaZekr);
                                        }),
                                    ListOfAzker(
                                        text: "أذكار المنزل",
                                        imag: "asset/images/mosque.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.ManzeleZekr);
                                        }),
                                    ListOfAzker(
                                        text: "أذكار الخلاء",
                                        imag: "asset/images/lantern.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.KalaaZekr);
                                        }),
                                    ListOfAzker(
                                        text: "أذكار الطعام",
                                        imag: "asset/images/eat.png",
                                        onTap: () {
                                          Get.toNamed(AppRoute.TaameZekr);
                                        }),
                                  ],
                                )
                              : const TasbyhPage()),
                    ],
                  ),
                )));
  }
}
