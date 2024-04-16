import 'package:get/get.dart';

class ElhdesPageController extends GetxController {
  bool active = false;

  void trueChange() {
    active = true;
    update();
  }

  void falseChange() {
    active = false;
    update();
  }
}
