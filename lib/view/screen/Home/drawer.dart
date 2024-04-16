import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic/core/constant/AppRoute.dart';
import 'package:islamic/view/widget/Drawer/listoftitledrawer.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: const Color.fromARGB(255, 231, 231, 231),
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: height * .0),
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: height * 0.0),
            child: Container(
              child: Image.asset(
                "asset/images/intro.png",
                height: height * 0.3,
              ),
            ),
          ),
          ListOfTitleDrawer(
              image: "asset/images/quran-2.png",
              text: "القرآن الكريم",
              onTap: () {
                Get.toNamed(AppRoute.QruanPage);
              }),
          ListOfTitleDrawer(
              image: "asset/images/decoration.png",
              text: "الاربعين النووية",
              onTap: () {
                Get.toNamed(AppRoute.ElhdesPage);
              }),
          ListOfTitleDrawer(
              image: "asset/images/beads.png",
              text: "الاذكار",
              onTap: () {
                Get.toNamed(AppRoute.ElAzker);
              }),
          ListOfTitleDrawer(
              image: "asset/images/islam-2.png",
              text: "أذكار الصباح",
              onTap: () {
                Get.toNamed(AppRoute.MorningZker);
              }),
          ListOfTitleDrawer(
              image: "asset/images/moon-4.png",
              text: "أذكار المساء",
              onTap: () {
                Get.toNamed(AppRoute.EveningAzkar);
              }),
          ListOfTitleDrawer(
              image: "asset/images/10.png",
              text: "المسبح الالكتروني",
              onTap: () {
                Get.toNamed(AppRoute.Sabha);
              }),
          ListOfTitleDrawer(
              image: "asset/images/fm.png",
              text: "إذاعة القرآن الكريم",
              onTap: () {
                Get.toNamed(AppRoute.RadioFM);
              })
        ],
      ),
    );
  }
}
