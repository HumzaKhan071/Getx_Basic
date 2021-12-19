import 'package:get/get.dart';

class countController extends GetxController {
  int count = 0;

  incrementalCounter() {
    count++;
    update();
  }
}
