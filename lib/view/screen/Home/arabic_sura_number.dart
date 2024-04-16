import 'package:flutter/material.dart';

class Arabic_Aya extends StatelessWidget {
  const Arabic_Aya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "\uFD3E",
      style: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontFamily: 'me_quran',
        fontSize: 20,
        shadows: [
          Shadow(
            offset: Offset(.5, .5),
            blurRadius: 1.0,
            color: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}
