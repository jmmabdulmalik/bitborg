import 'package:appdesign/Screens/slidescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    body: Center(
      child: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splash: 'assets/splash.png',
        nextScreen: SlideScreens(),
    splashTransition: SplashTransition.slideTransition,
    ),
    ),
  );
  }
}
