import 'package:flutter/material.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/data/datasource/db/myazker.dart';
import 'package:islamic/data/model/azker.dart';
import 'package:islamic/view/widget/Home/cardofzekr.dart';

class Masgedzekr extends StatefulWidget {
  const Masgedzekr({super.key});

  @override
  State<Masgedzekr> createState() => _MorningZkerState();
}

class _MorningZkerState extends State<Masgedzekr> {
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
          title: Text("أذكار المسجد",
              style: TextStyle(
                fontSize: height * .035,
                fontFamily: 'Rakkas',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ))),
      body: Column(mainAxisSize: MainAxisSize.min, children: [
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
        FutureBuilder<List<Azker>>(
          future: MyAzker.getMasgedzekr(),
          builder: (context, AsyncSnapshot<List<Azker>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              return Expanded(
                child: Container(
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return CardOfAzker(
                        a: snapshot.data![index],
                      );
                    },
                  ),
                ),
              );
            } else {
              return const Text("No morning Azkar data");
            }
          },
        ),
      ]),
    );
  }
}
