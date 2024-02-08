import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gaushala_frontend/routes/routes_name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamedAndRemoveUntil(RouteName.loginScreenRoute, (route) => false);
    });
    return Scaffold(
      body: Image.asset(
        "assets/images/splash_screen_bg.png",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
