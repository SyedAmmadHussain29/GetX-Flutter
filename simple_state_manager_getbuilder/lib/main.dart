import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_state_manager_getbuilder/controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /// If init property is not in GetX<Type of Controller> then
  ///create the instance of controller as follows
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Simple State manager GetBuilder"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                  //init: MyController(),
                  builder: (controller) {
                return Text("The value is ${myController.count}");
              }),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.increment();

                    ///If instance of contrller not created at top
                    // Get.find<MyController>().increment();
                  },
                  child: const Text("Press")),
            ],
          ),
        ),
      ),
    );
  }
}
