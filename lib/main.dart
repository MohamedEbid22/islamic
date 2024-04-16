import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:islamic/core/constant/defoalte.dart';
import 'package:islamic/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await getSettings();
  await getcity();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
    );
  }
}
