import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic/controller/azkercontroller.dart';
import 'package:islamic/core/constant/color.dart';
import 'package:islamic/data/model/azker.dart';

class CardOfAzker extends StatelessWidget {
  final Azker a;

  CardOfAzker({
    Key? key,
    required this.a,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int x = int.parse(a.count);
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .02,
        ),
        child: GetBuilder<AzkerController>(
          init: AzkerController(),
          builder: (controller) => InkWell(
            onTap: () {
              controller.count = int.parse(a.count);
              int munascount = controller.decrementCount();
              a.count = munascount.toString();
            },
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .012,
                  ),
                  Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: a.description == ""
                                    ? null
                                    : Padding(
                                        padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .005,
                                        ),
                                        child: Text(
                                          a.description,
                                          textDirection: TextDirection.rtl,
                                          style: GoogleFonts.rubik(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                255, 112, 112, 112),
                                          ),
                                        ),
                                      ),
                                subtitle: Padding(
                                  padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        .01,
                                  ),
                                  child: Text(
                                    a.content,
                                    textDirection: TextDirection.rtl,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Cairo",
                                      color: Color.fromARGB(255, 154, 154, 154),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('asset/images/dashboard.png'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12))),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: a.count == "0"
                                      ? [
                                          const Color.fromARGB(
                                              191, 152, 152, 152),
                                          const Color.fromARGB(
                                              155, 110, 110, 110)
                                        ]
                                      : [secondaryColor, primaryColor]),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width *
                                        0.001,
                                    left: MediaQuery.of(context).size.width *
                                        0.001,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      a.count = x.toString();
                                      controller.reupdate();
                                    },
                                    icon: const Icon(
                                      Icons.refresh_sharp,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      size: 25,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    a.count.padLeft(3, '0'),
                                    textDirection: TextDirection.rtl,
                                    style: const TextStyle(
                                      fontSize: 35,
                                      fontFamily: "DigitalNumbers",
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
