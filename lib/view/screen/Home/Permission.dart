import 'package:flutter/material.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/view/screen/Home/qiblah.dart';
import 'package:location/location.dart';
import 'package:lottie/lottie.dart';

class PermissionPage extends StatefulWidget {
  const PermissionPage({super.key});

  @override
  State<PermissionPage> createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {
  Location location = Location();

  @override
  void initState() {
    checkPermission();
    super.initState();
  }

  Future<PermissionStatus> checkPermission() async {
    return await location.hasPermission();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
          "القبلة",
          style: TextStyle(
            fontSize: height * 0.046,
            fontFamily: 'Rakkas',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder<PermissionStatus>(
          future: checkPermission(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data == PermissionStatus.granted) {
                return QiblahScreen();
              } else {
                return Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: s1color,
                    ),
                    onPressed: () async {
                      await location.requestPermission();

                      setState(() {});
                    },
                    child: const Text(
                      "Need Permission",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Changa',
                          color: Colors.white),
                    ),
                  ),
                );
              }
            } else {
              return Center(
                child: Lottie.asset("asset/lottie/loading.json",
                    height: height * .2),
              );
            }
          }),
    );
  }
}
