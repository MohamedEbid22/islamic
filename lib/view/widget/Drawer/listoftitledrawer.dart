import 'package:flutter/material.dart';

class ListOfTitleDrawer extends StatelessWidget {
  final String image;
  final String text;
  final Function()? onTap;
  const ListOfTitleDrawer(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: height * 0.013, horizontal: width * .02),
      child: ListTile(
        trailing: Image.asset(
          image,
          height: height * .04,
        ),
        title: Text(text,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: height * .025,
              fontFamily: 'Changa',
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 98, 98, 98),
            )),
        onTap: onTap,
      ),
    );
  }
}
