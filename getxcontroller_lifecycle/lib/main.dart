import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX controller lifecycle method"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            GetBuilder<MyController>(
              // initState: (data) => myController.increment(),
              // dispose: (_) => myController.cleanUpTask(),
              builder: (controller) {
                return Text("the value is ${myController.count}");
              },
            )
          ]),
        ),
      ),
    );
  }
}
