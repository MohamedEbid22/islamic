import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/view/screen/Home/home.dart';
import 'package:islamic/view/screen/Home/qruanpagr.dart';
import 'package:islamic/view/screen/Home/settingspage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final items = <Widget>[
      Icon(
        Icons.home_rounded,
        size: 30,
        color: index == 0
            ? const Color.fromARGB(255, 122, 122, 122)
            : const Color.fromARGB(255, 255, 255, 255),
      ),
      Image(
        image: const AssetImage("asset/images/koran.png"),
        width: width * 0.09,
        height: height * .05,
      ),
      Icon(
        Icons.settings,
        size: 30,
        color: index == 2
            ? const Color.fromARGB(255, 122, 122, 122)
            : const Color.fromARGB(255, 255, 255, 255),
      ),
    ];
    final screen = [
      const Homepage(),
      const QruanPage(),
      const SettingsPage(),
    ];
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: s1color,
        index: index,
        height: height * 0.08,
        backgroundColor: const Color.fromARGB(0, 252, 252, 252),
        items: items,
        buttonBackgroundColor: const Color.fromARGB(0, 252, 252, 252),
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
      body: screen[index],
    );
  }
}
