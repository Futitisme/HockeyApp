import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hockey_forecast_app/screens/onboarding1_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen duration
    Timer(Duration(seconds: 3), () {
      // Navigate to the main screen after the splash screen duration
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Onboarding1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/splash.png',
          ),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        )),
      )),
    );
  }
}
