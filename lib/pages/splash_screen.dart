import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery/pages/info_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay and navigate to the next screen
    Timer(
      Duration(seconds: 5), // Adjust the duration as needed
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => InfoScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x000d0d0d),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Pattern.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [Colors.transparent, Colors.black],
                  stops: [0.2, 1.0]),
            ),
            child: Image.asset(
              "assets/images/Logo.png",
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
