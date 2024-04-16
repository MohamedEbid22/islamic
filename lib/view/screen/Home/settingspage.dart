import 'package:flutter/material.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/core/constant/defoalte.dart';
import 'package:islamic/view/screen/Home/dropdown_city.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

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
          "الاعدادات",
          style: TextStyle(
            fontSize: height * 0.046,
            fontFamily: 'Rakkas',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
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
          Expanded(
              child: ListView(
            children: [
              Container(
                child: Image.asset(
                  "asset/images/intro.png",
                  height: height * 0.3,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * .01, vertical: height * .02),
                child: ListTile(
                  title: Text("الاشعارات",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: height * .025,
                        fontFamily: 'Changa',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 98, 98, 98),
                      )),
                  trailing: Icon(
                    Icons.notifications_none,
                    color: s1color,
                  ),
                  leading: Switch(
                    activeColor: const Color.fromARGB(255, 239, 202, 92),
                    activeTrackColor: s1color,
                    inactiveThumbColor: Color.fromARGB(255, 84, 84, 84),
                    inactiveTrackColor: Color.fromARGB(255, 201, 201, 201),
                    splashRadius: 30,
                    value: notif,
                    onChanged: (value) {
                      setState(() {
                        notif = value;
                        saveSetting();
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * .01, vertical: height * .02),
                child: ListTile(
                  title: Text("الوضع الليلي",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: height * .025,
                        fontFamily: 'Changa',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 98, 98, 98),
                      )),
                  trailing: Icon(
                    Icons.nightlight_round_rounded,
                    color: s1color,
                  ),
                  leading: Switch(
                    activeColor: const Color.fromARGB(255, 239, 202, 92),
                    activeTrackColor: s1color,
                    inactiveThumbColor: Color.fromARGB(255, 84, 84, 84),
                    inactiveTrackColor: Color.fromARGB(255, 201, 201, 201),
                    splashRadius: 30,
                    value: barck,
                    onChanged: (value) {
                      setState(() {
                        barck = value;
                        saveSetting();
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * .01, vertical: height * .02),
                child: ListTile(
                  title: Text("المدينة",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: height * .025,
                        fontFamily: 'Changa',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 98, 98, 98),
                      )),
                  trailing: Icon(
                    Icons.location_on_outlined,
                    color: s1color,
                  ),
                  leading: DropDownCity(),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
