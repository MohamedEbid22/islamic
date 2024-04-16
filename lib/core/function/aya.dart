import 'package:flutter/material.dart';
import 'package:islamic/core/constant/defoalte.dart';

class ParenthesesTransform extends StatelessWidget {
  final String text;

  ParenthesesTransform({required this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: transformText(),
      ),
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
    );
  }

  List<TextSpan> transformText() {
    List<TextSpan> spans = [];
    StringBuffer currentText = StringBuffer();

    for (int i = 0; i < text.length; i++) {
      if (text[i] == '(') {
        if (currentText.isNotEmpty) {
          spans.add(TextSpan(
              text: currentText.toString(),
              style: TextStyle(
                color: const Color.fromARGB(255, 85, 85, 85),
                wordSpacing: 20,
                fontSize: arabickfontsize,
                height: 1.9,
                fontFamily: 'me_quran',
              )));
          currentText.clear();
        }
        spans.add(TextSpan(
            text: "  \uFD3F",
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'me_quran',
              fontSize: moshaffontsize,
            )));
      } else if (text[i] == ')') {
        if (currentText.isNotEmpty) {
          spans.add(
            TextSpan(
              text: currentText.toString(),
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: moshaffontsize,
                fontFamily: 'me_quran',
              ),
            ),
          );
          currentText.clear();
        }
        spans.add(TextSpan(
            text: "\uFD3e  ",
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'me_quran',
              wordSpacing: 20,
              fontSize: moshaffontsize,
            )));
      } else {
        currentText.write(text[i]);
      }
    }

    if (currentText.isNotEmpty) {
      spans.add(TextSpan(text: currentText.toString()));
    }

    return spans;
  }
}

String convertNumbersToArabic(String input) {
  Map<String, String> arabicNumerals = {
    '0': '٠',
    '1': '١',
    '2': '٢',
    '3': '٣',
    '4': '٤',
    '5': '٥',
    '6': '٦',
    '7': '٧',
    '8': '٨',
    '9': '٩',
  };

  String convertedString = '';

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if (arabicNumerals.containsKey(char)) {
      convertedString += arabicNumerals[char]!;
    } else {
      convertedString += char;
    }
  }

  return convertedString;
}
