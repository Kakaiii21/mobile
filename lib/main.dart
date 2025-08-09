import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:proj1/pages/authentication.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(42, 82, 158, 1),
                Color.fromRGBO(15, 29, 56, 1),
              ],
            ),
          ),
          child: Center(
            child: Image.asset("assets/images/logo.png", height: 200),
          ),
        ),
        splashIconSize: double.infinity,
        nextScreen: Authentication(),
        duration: 3100,
        backgroundColor: Colors.transparent,
      ),


    );
  }
}
