import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "route navigator",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Main screen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("THIS IS MAIN SCREEN"),
              ElevatedButton(
                  child: const Text("Elevated button"),
                  onPressed: () async {
                    // Get.to(home(),
                    //     fullscreenDialog: true, //to make full screen dialog
                    //     transition: Transition.zoom, //to provide animation
                    //     duration: Duration(milliseconds: 4000),
                    //     curve: Curves.bounceInOut); //for animation curve
                    //GO to home screen but no option to return to provide screen
                    // Get.off(home());
                    //Go to home screen and cancel all previous screen/routes
                    //Get.to(home(), arguments: "Data from main");
                    //Go to next screen and receive data sent from home screen
                    var data = await Get.to(home());
                    print("The received data is $data");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
