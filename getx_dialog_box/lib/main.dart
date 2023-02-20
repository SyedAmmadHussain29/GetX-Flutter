import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dialog"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("Show Dialog"),
                  onPressed: () {
                    // Get.defaultDialog();
                    Get.defaultDialog(
                      title: "this is titlt text",
                      titleStyle: const TextStyle(fontSize: 25),
                      middleText: "this is middle text ",
                      middleTextStyle: const TextStyle(fontSize: 25),
                      backgroundColor: Colors.green,
                      radius: 30,

                      //to custumize the middle text
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(width: 10),
                          Expanded(child: Text("expanded data loading")),
                        ],
                      ),
                      textCancel: "cancel",
                      cancelTextColor: Colors.white,
                      textConfirm: "confirm",
                      confirmTextColor: Colors.black,
                      onConfirm: () {},
                      onCancel: () {},

                      //custimize default  cncel adn confirm
                      cancel: Text(
                        "data",
                        style: TextStyle(color: Colors.white),
                      ),
                      confirm: Text(
                        "confirm",
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text("Action-1")),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Action-2"))
                      ],
                      barrierDismissible: false,
                    );
                    //Default cancel and confirm action
                  },
                )
              ]),
        ),
      ),
    );
  }
}
