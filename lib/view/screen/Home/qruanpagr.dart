import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic/controller/elhdescontroller.dart';
import 'package:islamic/core/constant/AppRoute.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/data/datasource/db/qran.dart';
import 'package:islamic/view/screen/Home/listofqruan.dart';
import 'package:islamic/view/screen/Home/listofqruanaudoi.dart';

class QruanPage extends StatefulWidget {
  const QruanPage({super.key});

  @override
  State<QruanPage> createState() => _QruanPageState();
}

class _QruanPageState extends State<QruanPage> {
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
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 25,
                color: Colors.white,
              )),
          title: const Text(
            "القرآن",
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Rakkas',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(AppRoute.Settings);
                },
                icon: const Icon(
                  Icons.settings,
                  size: 25,
                  color: Colors.white,
                ))
          ],
        ),
        body: GetBuilder<ElhdesPageController>(
            init: ElhdesPageController(),
            builder: (controller) => Column(
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
                          color: const Color.fromARGB(255, 251, 251, 251),
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
                      height: MediaQuery.of(context).size.height * .03,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .05,
                      width: MediaQuery.of(context).size.width * .85,
                      decoration: BoxDecoration(
                          color: greycolor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.001,
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
                                  height:
                                      MediaQuery.of(context).size.height * .05,
                                  width:
                                      MediaQuery.of(context).size.width * .425,
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
                                      "إستماع",
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.023,
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
                                  height:
                                      MediaQuery.of(context).size.height * .05,
                                  width:
                                      MediaQuery.of(context).size.width * .425,
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
                                      "قراءة",
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.023,
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
                      height: MediaQuery.of(context).size.height * .005,
                    ),
                    FutureBuilder(
                      future: MyQuran.getAlldata(),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return controller.active == false
                              ? Expanded(
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: ListView(
                                      children: [
                                        ...List.generate(
                                            snapshot.data.length,
                                            (index) => listofqruan(
                                                  quran: snapshot.data[index],
                                                ))
                                      ],
                                    ),
                                  ),
                                )
                              : Expanded(
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: ListView(
                                      children: [
                                        ...List.generate(
                                            snapshot.data.length,
                                            (index) => listofqruanaudoi(
                                                  quran: snapshot.data[index],
                                                ))
                                      ],
                                    ),
                                  ),
                                );
                        } else {
                          return const Text("No data");
                        }
                      },
                    ),
                  ],
                )));
  }
}
