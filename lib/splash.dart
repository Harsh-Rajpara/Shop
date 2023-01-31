import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shop/screens/details/details_screen.dart';
import 'package:shop/screens/home/home_screen.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset('assets/images/5.png'),
        splashIconSize: double.maxFinite,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: HomeScreen(),
        duration: 1000,
        animationDuration: Duration(seconds: 2),
      ),
    );
  }
}
