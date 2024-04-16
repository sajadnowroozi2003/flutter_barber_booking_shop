import 'package:flutter/material.dart';
import 'package:flutter_barber_app/src/constants/colors.dart';
import 'package:flutter_barber_app/src/constants/image_strings.dart';
import 'package:flutter_barber_app/src/constants/sizes.dart';
import 'package:flutter_barber_app/src/constants/text_strings.dart';
import 'package:flutter_barber_app/src/features/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: animate ? 0 : -30,
              left: animate ? 0 : -30,
              child: Image(
                image: AssetImage(tSplashTopIcon),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 120,
              left: animate ? tDefaultSize : -80,
              child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: animate ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      tAppTagLine,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
              bottom: animate ? 50 : 0,
              left: 0,
              child: Image(
                image: AssetImage(tSplashImage),
              ),
            ),
            AnimatedPositioned(
               duration: const Duration(milliseconds: 2400),
              bottom: animate ? 100 : 0,
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
          ],
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(
      Duration(microseconds: 500),
    );
    setState(() => animate = true);
    await Future.delayed(
      Duration(seconds: 3),
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WelcomeScreen(),
      ),
    );
  }
}
