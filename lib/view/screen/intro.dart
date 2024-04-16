import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:islamic/core/constant/AppRoute.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.offAndToNamed(AppRoute.HomeScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Container(
                width: width,
                child:
                    Lottie.asset('asset/lottie/start.json', width: width * .2),
              )),
          Center(
              child: Image.asset(
            "asset/images/intro.png",
            height: height * 1.2,
          ))
        ],
      ),
    );
  }
}
