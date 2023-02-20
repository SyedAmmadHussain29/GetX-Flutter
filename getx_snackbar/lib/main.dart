import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GET SNACK BAR",
      home: Scaffold(
        appBar: AppBar(
          title: Text("get x snack bar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar("title", "message",
                        //ye title or messgae ka color
                        colorText: Colors.red,
                        snackPosition: SnackPosition.BOTTOM,
                        titleText: const Text("this is title text"),
                        messageText: const Text(
                          "this is Message Text",
                          style: TextStyle(color: Colors.purple),
                        ),
                        backgroundColor: Colors.blueAccent,
                        borderRadius: 30,
                        margin: const EdgeInsets.all(10),
                        //maxWidth: 100,
                        animationDuration: const Duration(milliseconds: 3000),
                        backgroundGradient: const LinearGradient(
                            colors: [Colors.blue, Colors.green]),
                        //it is necessary to give border width
                        borderWidth: 4,
                        borderColor: Colors.red,
                        boxShadows: [
                          const BoxShadow(
                            color: Colors.orange,
                            offset: Offset(10, 50),
                            spreadRadius: 20,
                            blurRadius: 8,
                          ),
                        ],
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal,
                        forwardAnimationCurve: Curves.bounceInOut,
                        // duration: Duration(microseconds: 4000),
                        icon: const Icon(Icons.send),
                        //for icon pulse
                        // shouldIconPulse: false,

                        leftBarIndicatorColor: Colors.cyan,
                        mainButton: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "data",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        //to touch snackbar
                        onTap: (snack) {
                          print("retry");
                        },
                        showProgressIndicator: true,
                        overlayBlur: 5,
                        //blur color
                        // overlayColor: Colors.grey,
                        padding: EdgeInsets.all(10),
                        progressIndicatorBackgroundColor: Colors.orange,
                        progressIndicatorValueColor:
                            const AlwaysStoppedAnimation(Colors.white),
                        reverseAnimationCurve: Curves.bounceIn,
                        snackbarStatus: (Val) {
                          print(Val);
                        },
                        //for user input textfield
                        userInputForm: Form(
                            child: Row(
                          children: [
                            Expanded(child: TextField()),
                          ],
                        )));
                  },
                  child: const Text("show snack_bar"))
            ],
          ),
        ),
      ),
    );
  }
}
