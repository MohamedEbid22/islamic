import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:islamic/controller/azkercontroller.dart';

class TasbyhPage extends StatefulWidget {
  const TasbyhPage({super.key});

  @override
  State<TasbyhPage> createState() => _TasbyhPageState();
}

class _TasbyhPageState extends State<TasbyhPage> {
  var items = [
    "سُبْحَانَ اللَّهِ",
    "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ ",
    "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ",
    "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ ",
    "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ ",
    "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد",
    "أستغفر الله ",
    "لَا إِلَهَ إِلَّا اللَّهُ ",
    "الْلَّهُ أَكْبَرُ ",
    "الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ ",
    "اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً ",
  ];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.03),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Container(
                width: width * 0.7,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Text(
                        "اختار الذكر",
                        style: TextStyle(
                          fontSize: height * 0.022,
                          fontFamily: 'Changa',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      items: items.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Container(
                            width: width,
                            child: Text(
                              item,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontSize: height * 0.019,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      buttonStyleData: ButtonStyleData(
                        height: height * 0.05,
                        width: width * 0.6,
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color.fromARGB(66, 87, 87, 87),
                          ),
                          color: const Color.fromARGB(255, 205, 205, 205),
                        ),
                        elevation: 2,
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.arrow_drop_down_outlined,
                        ),
                        iconSize: 30,
                        iconEnabledColor: Color.fromARGB(255, 255, 255, 255),
                        iconDisabledColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                      dropdownStyleData: DropdownStyleData(
                        maxHeight: height * .5,
                        width: width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 206, 206, 206),
                        ),
                        offset: const Offset(45, -8),
                        scrollbarTheme: ScrollbarThemeData(
                          radius: const Radius.circular(40),
                          thickness: MaterialStateProperty.all<double>(2),
                          thumbVisibility:
                              MaterialStateProperty.all<bool>(true),
                        ),
                      ),
                      menuItemStyleData: MenuItemStyleData(
                        height: height * .09,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            selectedValue == null
                ? Container()
                : Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05, vertical: height * 0.05),
                    child: Text(
                      selectedValue!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: height * 0.04,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 184, 184, 184),
                      ),
                    ),
                  ),
            Expanded(
              child: ListView(
                children: [
                  GetBuilder<AzkerController>(
                      init: AzkerController(),
                      builder: (controller) => Container(
                            child: Stack(
                              children: [
                                Center(
                                  child: Image.asset(
                                    "asset/images/7.png",
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.113),
                                    child: Text(
                                      controller.tasbyh
                                          .toString()
                                          .padLeft(5, '0'),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontFamily: "DigitalNumbers",
                                          fontSize: height * 0.035,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: height * .24, left: width * .41),
                                  child: Container(
                                    width: width * .18,
                                    height: height * .08,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            0, 183, 183, 183),
                                        borderRadius:
                                            BorderRadius.circular(300)),
                                    child: IconButton(
                                      onPressed: () {
                                        controller.add();
                                      },
                                      icon: const Icon(
                                        Icons.panorama_wide_angle_select,
                                        size: 1,
                                        color:
                                            Color.fromARGB(255, 183, 183, 183),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: height * .2, left: width * .58),
                                  child: Container(
                                    width: width * .08,
                                    height: height * .035,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(0, 183, 183, 183),
                                        borderRadius:
                                            BorderRadius.circular(300)),
                                    child: Center(
                                      child: IconButton(
                                        onPressed: () {
                                          controller.tasbyh = 0;
                                          controller.reupdate();
                                        },
                                        icon: const Icon(
                                          Icons.replay_sharp,
                                          size: 18,
                                          color:
                                              Color.fromARGB(0, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
