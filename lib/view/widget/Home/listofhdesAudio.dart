import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:islamic/core/constant/AppRoute.dart';
import 'package:islamic/data/model/hdes.dart';

class listofhdesAudoi extends StatelessWidget {
  final Hadith h;

  const listofhdesAudoi({
    super.key,
    required this.h,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .02,
      ),
      child: InkWell(
        onTap: () {
          Get.toNamed(AppRoute.ReadHdethAudio, arguments: {"h": h});
        },
        child: Container(
          child: Card(
            child: Row(
              children: [
                Expanded(
                    child: ListTile(
                        title: Text(
                          "- " + h.key,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                            fontSize: 15,
                            fontFamily: 'Changa',
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 171, 171, 171),
                          ),
                        ),
                        subtitle: Text(
                          h.nameHadith,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Changa',
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 105, 105, 105),
                          ),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
