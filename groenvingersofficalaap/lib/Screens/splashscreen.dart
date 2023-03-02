import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import './loginscreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: AnimatedSplashScreen(
          splash: Image.asset('assets/LogoGroeneVingers.jpg'),
          nextScreen: const MyWidget(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white,
          splashIconSize: 300,
          duration: 3000,
        ),
      ),
    );
  }
}
