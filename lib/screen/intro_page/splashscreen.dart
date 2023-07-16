import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: MyColor.six,
        body: Center(
          child: SizedBox(
            height: Get.height * 0.7,
            width: Get.width * 0.7,
            child: Lottie.asset('assets/lottie/splashscreen.json'),
          ),
        ),
      ),
    );
  }
}
