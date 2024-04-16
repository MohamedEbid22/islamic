import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic/controller/readqurancontroller.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/core/function/aya.dart';
import 'package:islamic/view/widget/Home/infoquran.dart';

class ReadQruan extends StatefulWidget {
  const ReadQruan({super.key});

  @override
  State<ReadQruan> createState() => _ReadQruanState();
}

class _ReadQruanState extends State<ReadQruan> {
  ReadQruanController controller = Get.put(ReadQruanController());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    int id = controller.quran.id;
    String sura = convertNumbersToArabic(controller.quran.sowraa);
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
        title: Text(
          controller.quran.name,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * .035,
            fontFamily: 'Rakkas',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          InfoQuran(
            laters: controller.quran.letters,
            wordes: controller.quran.words,
            num: controller.quran.num,
            type: controller.quran.type,
          )
        ],
      ),
      body: Container(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/images/border4.png'),
                fit: BoxFit.fill),
          ),
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.023),
              child: ListView(
                children: [
                  Container(
                    child: id == 1 || id == 9
                        ? null
                        : Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: height * 0.03),
                            child: const Center(
                              child: Text("\uFDFD",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    wordSpacing: 10,
                                    fontSize: 40,
                                    fontFamily: 'me_quran',
                                  )),
                            ),
                          ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ParenthesesTransform(text: sura),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
