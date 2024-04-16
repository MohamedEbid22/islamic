import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamic/controller/azkercontroller.dart';
import 'package:islamic/core/constant/color.dart';

class Sabha extends StatefulWidget {
  const Sabha({Key? key}) : super(key: key);

  @override
  State<Sabha> createState() => _SabhaState();
}

class _SabhaState extends State<Sabha> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late AzkerController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(AzkerController());
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 2, end: 5).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        controller.add();
        _animationController
          ..reset()
          ..forward();
      },
      child: Scaffold(
        appBar: AppBar(
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
        ),
        body: Container(
          child: Column(
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
                  )),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: 1 + _animation.value * 0.2,
                    child: child,
                  );
                },
                child: GetBuilder<AzkerController>(
                  builder: (controller) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: height * .3),
                      child: Text(
                        '${controller.tasbyh}',
                        style: TextStyle(
                            fontSize: height * .07,
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: secondaryColor,
          onPressed: () {
            controller.tasbyh = 0;
            controller.reupdate();
          },
          child: const Text(
            "تصفير",
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Changa',
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
