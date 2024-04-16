import 'package:flutter/material.dart';

class ContenaerHome extends StatelessWidget {
  const ContenaerHome(
      {super.key,
      required this.h,
      required this.w,
      required this.colors,
      required this.image,
      required this.text,
      this.fontSize,
      required this.casee,
      required this.widthimage,
      required this.onTap,
      required this.heighimage});
  final double? h;
  final double? w;
  final List<Color> colors;
  final String image;
  final String text;
  final double? fontSize;
  final bool casee;
  final double? widthimage;
  final double? heighimage;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: h,
        width: w,
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
                image: AssetImage('asset/images/dashboard.png'),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(25)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: colors),
              borderRadius: BorderRadius.circular(25)),
          child: casee == false
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "$image",
                      width: widthimage,
                      height: heighimage,
                    ),
                    Text(
                      "$text",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontFamily: 'Changa',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset("$image",
                          width: MediaQuery.of(context).size.width * 0.2),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.04),
                        child: Text(
                          "$text",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontFamily: 'Changa',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
