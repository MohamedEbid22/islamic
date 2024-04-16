import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:islamic/controller/elhdescontroller.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/data/datasource/db/mydata.dart';
import 'package:islamic/view/widget/Home/listofhdes.dart';
import 'package:islamic/view/widget/Home/listofhdesAudio.dart';

class ElhdesPage extends StatefulWidget {
  const ElhdesPage({super.key});

  @override
  State<ElhdesPage> createState() => _ElhdesPageState();
}

class _ElhdesPageState extends State<ElhdesPage> {
  @override
  Widget build(BuildContext context) {
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
            "الحديث الشريف",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.046,
              fontFamily: 'Rakkas',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
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
                                      "الاستماع",
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
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    FutureBuilder(
                        future: Mydata.getAlldata(),
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
                                              (index) => listofhdes(
                                                    h: snapshot.data[index],
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
                                              (index) => listofhdesAudoi(
                                                    h: snapshot.data[index],
                                                  ))
                                        ],
                                      ),
                                    ),
                                  );
                          }
                          return const Text("data");
                        })
                  ],
                )));
  }
}
