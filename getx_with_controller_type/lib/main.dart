import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // If init property is not used in GetX<Type of Controller> then
  //create the instance of controller as follows.
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX with controller type"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<MyController>(
                  // init: MyController(),
                  builder: (controller) {
                //  return Text("The value is ${controller.count}");
                return Text("The value is ${myController.count}");
              }),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.increment();

                    //if instance o controller not created at top
                    //Get.find<MyController>().increment();
                  },
                  child: const Text("press"))
            ],
          ),
        ),
      ),
    );
  }
}
