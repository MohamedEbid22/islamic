import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:islamic/data/model/hdes.dart';

class ReadHedseController extends GetxController {
  late Hadith h;

  void onInit() {
    h = Get.arguments['h'];
    super.onInit();
  }
}
