import 'package:get/get.dart';
import 'package:obx/student.dart';

class myController extends GetxController {
  // var Student = student();

  // void convertToUppercase() {
  //   Student.name.value = Student.name.value.toUpperCase();
  // }

  //second method
  var Student = student(name: "raza", age: 25).obs;
  void convertUpper() {
    Student.update((Student) {
      Student!.name = Student.name.toString().toUpperCase();
    });
  }
}
