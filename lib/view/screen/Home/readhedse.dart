import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:islamic/controller/readhedsecontroller.dart';
import 'package:islamic/core/constant/color.dart';

class ReadHedse extends StatefulWidget {
  const ReadHedse({super.key});

  @override
  State<ReadHedse> createState() => _ReadHedseState();
}

class _ReadHedseState extends State<ReadHedse> {
  ReadHedseController controller = Get.put(ReadHedseController());
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
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
            controller.h.nameHadith,
            style: TextStyle(
              fontSize: height * .03,
              fontFamily: 'Changa',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(children: [
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
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * .01, vertical: height * 0.0),
              child: Container(
                width: width,
                height: height * 0.8,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(170, 240, 240, 240),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(
                        MediaQuery.of(context).size.width,
                        30.0,
                      ),
                      bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width,
                        30.0,
                      ),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _convertHadith(context, controller.h.textHadith),
                            SizedBox(
                              height: height * .03,
                            ),
                            SizedBox(
                              height: height * .05,
                              child: const Text(
                                "الشرح",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Changa',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 123, 123, 123),
                                ),
                              ),
                            ),
                            Text(
                              controller.h.explanationHadith,
                              textDirection: TextDirection.rtl,
                              style: const TextStyle(
                                height: 1.9,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 171, 171, 171),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ]));
  }
}

RichText _convertHadith(BuildContext context, String text) {
  text = text.replaceAll('(', '{');
  text = text.replaceAll(')', '}');

  List<String> split = text.split(RegExp("{"));

  List<String> hadiths = split.getRange(1, split.length).fold([], (t, e) {
    var texts = e.split("}");

    if (texts.length > 1) {
      return List.from(t)
        ..addAll(
            ["{${texts.first}}", " ${e.substring(texts.first.length + 1)}"]);
    }
    return List.from(t)..add("{${texts.first}");
  });

  return RichText(
    textAlign: TextAlign.right,
    text: TextSpan(
      style: const TextStyle(
          height: 1.9, fontSize: 20, color: Color.fromARGB(255, 112, 112, 112)),
      children: [TextSpan(text: split.first)]..addAll(hadiths
          .map((text) => text.contains("{")
              ? TextSpan(
                  text: text,
                  style: TextStyle(
                      height: 1.9,
                      fontSize: 22,
                      color: primaryColor,
                      fontWeight: FontWeight.bold))
              : TextSpan(text: text))
          .toList()),
    ),
    textDirection: TextDirection.rtl,
  );
}
