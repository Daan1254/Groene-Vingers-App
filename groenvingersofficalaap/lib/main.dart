import 'package:flutter/material.dart';
import 'Screens/splashscreen.dart';

void main() {
  runApp(const SplashScreen());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green, secondaryHeaderColor: Colors.amber),
    );
  }
}
