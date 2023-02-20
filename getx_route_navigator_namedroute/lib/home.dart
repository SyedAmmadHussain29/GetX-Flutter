import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("This is home screen"),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("GO BACK TO MAIN SCREEN")),
            ElevatedButton(
                onPressed: () {
                  //Get.toNamed("/next");
                  Get.toNamed("/next/1234");
                },
                child: const Text("GO TO NEXT SCREEN")),
            Text(
                "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}"),
          ],
        )));
  }
}
