import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic/core/constant/AppRoute.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/view/screen/Home/azanpage.dart';
import 'package:islamic/view/screen/Home/drawer.dart';
import 'package:islamic/view/widget/Home/contrnar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "طريقي",
          style: TextStyle(
            fontSize: height * 0.046,
            fontFamily: 'Rakkas',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      endDrawer: const Drawer(
        child: DrawerPage(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 15,
              width: double.infinity,
              color: primaryColor,
              child: Container(
                height: 15,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 251, 251, 251),
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
                padding: EdgeInsets.only(
                    top: height * 0.03,
                    left: width * 0.05,
                    bottom: 0,
                    right: width * 0.05),
                child: const AzanPage()),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.035, vertical: height * 0.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.05,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: height * 0.03),
                                child: ContenaerHome(
                                  onTap: () {
                                    Get.toNamed(AppRoute.ElAzker);
                                  },
                                  casee: false,
                                  h: height * .16,
                                  w: width * 0.41,
                                  image: "asset/images/beads.png",
                                  colors: [thereeColor, fouerColor],
                                  text: "الاذكار",
                                  fontSize: height * 0.035,
                                  widthimage: width * 0.17,
                                  heighimage: height * 0.1,
                                ),
                              ),
                              ContenaerHome(
                                onTap: () {
                                  Get.toNamed(AppRoute.PermissionPage);
                                },
                                casee: false,
                                h: height * .22,
                                w: width * 0.41,
                                image: "asset/images/kaaba-2.png",
                                colors: [fiveColor, sexColor],
                                text: "القبله",
                                fontSize: height * 0.035,
                                widthimage: width * 0.17,
                                heighimage: height * 0.1,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: height * 0.03),
                                child: ContenaerHome(
                                  onTap: () {
                                    Get.toNamed(AppRoute.QruanPage);
                                  },
                                  casee: false,
                                  h: height * .22,
                                  w: width * 0.41,
                                  image: "asset/images/quran-2.png",
                                  colors: [savenColor, eatColor],
                                  text: "القرآن الكريم",
                                  fontSize: height * 0.03,
                                  widthimage: width * 0.17,
                                  heighimage: height * 0.1,
                                ),
                              ),
                              ContenaerHome(
                                onTap: () {
                                  Get.toNamed(AppRoute.Doaa);
                                },
                                casee: false,
                                h: height * .16,
                                w: width * 0.41,
                                image: "asset/images/praying.png",
                                colors: [nanColor, tanColor],
                                text: "الدعاء",
                                fontSize: height * 0.035,
                                widthimage: width * 0.15,
                                heighimage: height * 0.1,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
