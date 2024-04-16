import 'package:flutter/material.dart';
import 'package:islamic/view/screen/Home/home.dart';
import 'package:location/location.dart';

class PermissionPagee extends StatefulWidget {
  const PermissionPagee({Key? key}) : super(key: key);

  @override
  _PermissionPageState createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPagee> {
  Location location = Location();

  @override
  void initState() {
    super.initState();
  }

  Future<PermissionStatus> checkPermission() async {
    return await location.hasPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<PermissionStatus>(
          future: checkPermission(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data == PermissionStatus.granted) {
                return Homepage();
              } else {
                return Center(
                  child: ElevatedButton(
                      onPressed: () async {
                        await location.requestPermission();
                        setState(() {});
                      },
                      child: Text("Need Permission")),
                );
              }
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
