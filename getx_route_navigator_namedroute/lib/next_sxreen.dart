import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("nxet page screen"),
      ),
      body: Center(
        child: Column(children: [
          const Text("this is next screen"),
          Text("${Get.parameters['someValue']}"),
        ]),
      ),
    );
  }
}
