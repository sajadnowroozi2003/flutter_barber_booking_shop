import 'package:flutter/material.dart';
import 'package:flutter_barber_app/src/features/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(
      Duration(microseconds: 500),
    );
    animate.value = true;
    await Future.delayed(
      Duration(seconds: 5),
    );

    Get.to(WelcomeScreen());
  }
}
