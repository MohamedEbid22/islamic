import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:islamic/data/model/quran.dart';

class ReadQruanController extends GetxController {
  late Quran quran;

  void onInit() {
    quran = Get.arguments['quran'];
    super.onInit();
  }
}
