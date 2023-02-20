import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 1.obs;
  void increment() {
    count++;
  }
}
