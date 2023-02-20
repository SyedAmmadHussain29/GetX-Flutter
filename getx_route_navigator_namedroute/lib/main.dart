import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route_navigator_namedroute/next_sxreen.dart';
import 'package:getx_route_navigator_namedroute/unknown_route.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Named Route",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      transitionDuration: Duration(milliseconds: 3000),
      getPages: [
        GetPage(name: "/", page: () => MyApp()),
        GetPage(name: "/home", page: () => Home()),
        // GetPage(
        //     name: "/next",
        //     page: () => NextScreen(),
        //     transition: Transition.leftToRight),
        GetPage(
            name: "/next/:someValue",
            page: () => NextScreen(),
            transition: Transition.leftToRight),
      ],
      //unknownRoute: GetPage(name: "/notfound", page: () => unknownroute()),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("NAMED ROUTE"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("GO HOME BUTTON"),
              onPressed: () {
                Get.toNamed("/home");
                //   Get.toNamed("/home");
                ///Go to home screen but no options to return to previous screen
                //Get.offNamed("/home");
                ///Got o home screen and cancel alla previous screen/routes
                // Get.offAllNamed("/home");
                ///Dynamic URL link
                //Get.toNamed("/home?channel=ripples Code&content=Flutter GetX");
              },
            ),
          ],
        )),
      ),
    );
  }
}
