import 'package:flutter/material.dart';
import 'package:food_delivery/pages/splash_screen.dart';

void main() {
  runApp(const FoodDelivery());
}

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: SplashScreen(),
      ),
    );
  }
}
