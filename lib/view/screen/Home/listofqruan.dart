import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:islamic/core/constant/AppRoute.dart';
import 'package:islamic/data/model/quran.dart';

class listofqruan extends StatelessWidget {
  final Quran quran;

  const listofqruan({
    super.key,
    required this.quran,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .02,
      ),
      child: InkWell(
        onTap: () {
          Get.toNamed(AppRoute.ReadQruan, arguments: {"quran": quran});
        },
        child: Container(
          child: Card(
            child: Row(
              children: [
                Expanded(
                    child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        quran.name,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .022,
                          fontFamily: 'Changa',
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 117, 117, 117),
                        ),
                      ),
                      Text(
                        quran.id.toString() + "  -  ",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .022,
                          fontFamily: 'Changa',
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 171, 171, 171),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
