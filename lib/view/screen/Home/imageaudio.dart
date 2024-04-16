import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:islamic/controller/azancontroller.dart';

class ImageShakh extends StatefulWidget {
  const ImageShakh({super.key});

  @override
  State<ImageShakh> createState() => _AzanPageState();
}

class _AzanPageState extends State<ImageShakh> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GetBuilder<AzanController>(
        init: AzanController(),
        builder: (controller) => Container(
              height: height * 0.37,
              width: width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(1.5, 3),
                  ),
                ],
                image: const DecorationImage(
                    image: AssetImage('asset/images/shakh.JPG'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(134, 23, 159, 250),
                      Color.fromARGB(0, 8, 102, 165)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ));
  }
}
