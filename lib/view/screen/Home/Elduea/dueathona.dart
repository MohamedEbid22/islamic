import 'package:flutter/material.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/data/datasource/db/mydoaa.dart';
import 'package:islamic/data/model/doaamodel.dart';
import 'package:islamic/view/widget/Home/cardofduea.dart';

class DueaThonea extends StatefulWidget {
  const DueaThonea({super.key});

  @override
  State<DueaThonea> createState() => _MorningZkerState();
}

class _MorningZkerState extends State<DueaThonea> {
  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          "أدعية السنة النبوية",
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'Rakkas',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
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
        FutureBuilder<List<DOAA>>(
          future: MyDoaa.getdueathonaa(),
          builder: (context, AsyncSnapshot<List<DOAA>> snapshot) {
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
                      return CardOfDuea(
                        doaa: snapshot.data![index],
                      );
                    },
                  ),
                ),
              );
            } else {
              return const Text("No Evening Azkar data");
            }
          },
        ),
      ]),
    );
  }
}
