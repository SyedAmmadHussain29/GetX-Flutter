import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_unique_id/controller.dart';

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
          title: const Text("unique ID"),
        ),
        body: Center(
          child: Column(children: [
            GetBuilder<MyController>(
                id: 'txtCount',
                builder: (controller) {
                  return Text("the value is ${controller.count}");
                }),
            GetBuilder<MyController>(builder: (controller) {
              return Text("the value is ${controller.count}");
            }),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  myController.increment();
                },
                child: const Text("Press")),
          ]),
        ),
      ),
    );
  }
}
