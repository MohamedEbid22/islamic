import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/core/constant/defoalte.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Material(
      child: Scaffold(
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
            "الخط",
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Changa',
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            Expanded(
              child: ListView(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * .08, vertical: height * .1),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Text(
                              ': حجم خط المصحف',
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Changa',
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Slider(
                              value: arabickfontsize,
                              min: 20,
                              max: 70,
                              activeColor:
                                  const Color.fromARGB(255, 34, 159, 231),
                              onChanged: (value) {
                                setState(() {
                                  arabickfontsize = value;
                                });
                              },
                            ),
                            Text(
                              "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
                              style: TextStyle(
                                  fontFamily: 'quran',
                                  fontSize: arabickfontsize),
                              textDirection: TextDirection.rtl,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Divider(),
                            ),
                            const Text(
                              ': حجم الايه',
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Changa',
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Slider(
                              value: moshaffontsize,
                              activeColor:
                                  const Color.fromARGB(255, 34, 159, 231),
                              min: 15,
                              max: 50,
                              onChanged: (value) {
                                setState(() {
                                  moshaffontsize = value;
                                });
                              },
                            ),
                            Text(
                              "\uFD3f" + "١" + "\uFD3e",
                              style: TextStyle(
                                  fontFamily: 'me_quran',
                                  fontSize: moshaffontsize),
                              textDirection: TextDirection.rtl,
                            ),
                            SizedBox(
                              height: height * .1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        arabickfontsize = 30;
                                        moshaffontsize = 20;
                                      });
                                      saveSetting();
                                    },
                                    child: Text(
                                      'إعادة ضبط',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Changa',
                                          color: primaryColor),
                                    )),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: primaryColor,
                                    ),
                                    onPressed: () {
                                      saveSetting();

                                      Get.back();
                                    },
                                    child: const Text(
                                      'حفظ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Changa',
                                          color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
