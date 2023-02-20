import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;
  Future<void> increment() async {
    await Future.delayed(const Duration(seconds: 3));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print("clean up task");
  }

  ///Better aproach if we remove init bro builder
  @override
  void onInit() {
    print("init called");
    super.onInit();
  }

  @override
  void onclose() {
    super.onClose();
  }
}
