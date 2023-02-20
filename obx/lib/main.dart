import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obx/mycontroller.dart';
import 'package:obx/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ///for controller
  myController MyController = Get.put(myController());

  ///for student
  //var Student = student();
  //final Student = student(name: "raza", age: 25).obs;

  ///for count
  var count = 1.obs;
  RxInt square = 2.obs;
  RxInt cube = 1.obs;
  void increment() {
    count++;
    square.value = square.value * 2;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "obX",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("obX"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "the value of count $count",
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
              Obx(() => Text(
                    "the square of value  $square",
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
              Obx(() => Text("Name is ${MyController.Student.value.name}")),
              ElevatedButton(
                  child: const Text("increment"),
                  onPressed: () {
                    increment();

                    ///IF individual variables are observable
                    //Student.name.value = Student.name.value.toUpperCase();
                    ///if entire class is observable
                    // Student.update((Student) {
                    //   Student!.name = Student.name.toString().toUpperCase();});
                    ///for controller
                    // MyController.convertToUppercase();
                   MyController.convertUpper();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
