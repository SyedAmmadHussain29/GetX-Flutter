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
      title: "Bottom sheet",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom sheet title"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text("Elevated Button"),
                  onPressed: () {
                    Get.bottomSheet(
                        Container(
                          child: Wrap(
                            children: [
                              ListTile(
                                leading: Icon(Icons.wb_sunny_outlined),
                                title: Text("light theme"),
                                onTap: () {
                                  Get.changeTheme(ThemeData.light());
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.wb_sunny_outlined),
                                title: Text("dark theme"),
                                onTap: () {
                                  Get.changeTheme(ThemeData.dark());
                                },
                              )
                            ],
                          ),
                        ),
                        barrierColor: Colors.redAccent.shade400,
                        backgroundColor: Colors.amberAccent,
                        isDismissible: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 7.0),
                        ),
                        enableDrag: true);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
