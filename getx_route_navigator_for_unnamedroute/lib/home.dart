import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("This is home screen"),
            ElevatedButton(
                onPressed: () {
                  // Get.back();

                  ///send data to previous screen must use result as name
                  Get.back(result: "this is from home Screeen");
                },
                child: const Text("Go back to mian screen")), //button

            //this is for argument
            // Text(
            //   "${Get.arguments}",
            //   style: const TextStyle(color: Colors.black ),
            // ),
          ],
        ),
      ),
    );
  }
}
