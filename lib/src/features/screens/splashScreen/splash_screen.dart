import 'package:flutter/material.dart';
import 'package:flutter_barber_app/src/constants/colors.dart';
import 'package:flutter_barber_app/src/constants/image_strings.dart';
import 'package:flutter_barber_app/src/constants/sizes.dart';
import 'package:flutter_barber_app/src/constants/text_strings.dart';
import 'package:flutter_barber_app/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final splashContoller = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashContoller.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashContoller.animate.value ? 0 : -30,
                left: splashContoller.animate.value ? 0 : -30,
                child: Image(
                  image: AssetImage(tSplashTopIcon),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 140,
                left: splashContoller.animate.value ? tDefaultSize : -80,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashContoller.animate.value ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tAppName,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        tAppTagLine,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
                bottom: splashContoller.animate.value ? 40 : 0,
                left: 0,
                child: Image(
                  image: AssetImage(tSplashImage),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
                bottom: splashContoller.animate.value ? 50 : 0,
                right: tDefaultSize,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    color: tPrimaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
