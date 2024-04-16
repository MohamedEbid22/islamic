import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic/controller/elhdescontroller.dart';
import 'package:islamic/core/constant/AppRoute.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/view/widget/Home/listofdoua.dart';

class Doaa extends StatefulWidget {
  const Doaa({super.key});

  @override
  State<Doaa> createState() => _DoaaState();
}

class _DoaaState extends State<Doaa> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
            "الدعاء",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: height * .046,
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
                        height: MediaQuery.of(context).size.height * .005,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListOfDuea(
                            text: "أدعية قرآنية",
                            onTap: () {
                              Get.toNamed(AppRoute.DueaQuran);
                            },
                            imag: "asset/images/islam-2.png",
                          ),
                          ListOfDuea(
                              text: "أدعية من السنة النبوية",
                              imag: "asset/images/moon-4.png",
                              onTap: () {
                                Get.toNamed(AppRoute.DueaThonea);
                              }),
                          ListOfDuea(
                              text: "أدعية للميّت",
                              imag: "asset/images/salah.png",
                              onTap: () {
                                Get.toNamed(AppRoute.DueaToMayet);
                              }),
                          ListOfDuea(
                              text: "دعاء المذاكرة",
                              imag: "asset/images/salah.png",
                              onTap: () {
                                Get.toNamed(AppRoute.DueaMozacra);
                              }),
                        ],
                      ))
                    ],
                  ),
                )));
  }
}
