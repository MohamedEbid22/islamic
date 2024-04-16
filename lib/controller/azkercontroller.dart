import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AzkerController extends GetxController {
  int count = 0;
  int tasbyh = 00;

  decrementCount() {
    if (count > 0) {
      count--;
      update();
    }
    return count;
  }

  add() {
    tasbyh++;
    update();
  }

  reupdate() {
    update();
  }
}
