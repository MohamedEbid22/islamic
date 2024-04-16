import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:flutter_svg/svg.dart';
import 'package:location/location.dart';
import 'package:lottie/lottie.dart';
import 'package:prayers_times/prayers_times.dart';

class QiblahScreen extends StatefulWidget {
  @override
  _QiblahCompassState createState() => _QiblahCompassState();
}

class _QiblahCompassState extends State<QiblahScreen> {
  Location location = Location();
  late Stream<LocationData> locationData;
  double degree = 0.0;

  @override
  void initState() {
    locationData = location.onLocationChanged;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return StreamBuilder<LocationData>(
      stream: locationData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var latitude = snapshot.data?.latitude;
          var longitude = snapshot.data?.longitude;
          Coordinates coordinates = Coordinates(latitude!, longitude!);
          degree = Qibla.qibla(coordinates);

          double qibla = degree * (pi / 180);
          return Scaffold(
            body: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: StreamBuilder<CompassEvent>(
                    stream: FlutterCompass.events,
                    builder: (context, snapshot2) {
                      if (snapshot2.hasData) {
                        double compass = -snapshot2.data!.heading! * (pi / 180);

                        Color scaffoldColor =
                            compass <= -2.38 && compass >= -2.46
                                ? const Color.fromARGB(90, 17, 154, 233)
                                : Colors.white;

                        return Container(
                          color: scaffoldColor,
                          child: Transform.rotate(
                            angle: compass,
                            child: Stack(
                              children: [
                                SvgPicture.asset(
                                  "asset/images/qublh1.svg",
                                  height: height,
                                  width: width,
                                ),
                                Transform.rotate(
                                  angle: qibla,
                                  child: Image.asset(
                                    "asset/images/arrowDir.webp",
                                    height: height,
                                    width: width,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Center(
                          child: Lottie.asset("asset/lottie/loading.json",
                              height: height * .2),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return Scaffold(
              body: Center(
            child:
                Lottie.asset("asset/lottie/loading.json", height: height * .2),
          ));
        }
      },
    );
  }
}
