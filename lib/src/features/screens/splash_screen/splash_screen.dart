import 'package:flutter/material.dart';
import 'package:flutter_barber_app/src/constants/image_strings.dart';
import 'package:flutter_barber_app/src/constants/sizes.dart';
import 'package:flutter_barber_app/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              left: 0,
              child: Image(
                image: AssetImage(tSplashTopIcon),
              ),
            ),
            const Positioned(
              top: 135,
              left: tDefaultSize,
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
            Positioned(
              bottom: 20,
              left: 0,
              child: Image(
                image: AssetImage(tSplashImage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
