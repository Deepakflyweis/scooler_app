
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scooler_app/essentials/essentials.dart';
import 'package:scooler_app/modules/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () => Get.to(() => WelcomeScreen()));
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/images/splash.png',fit: BoxFit.fill),
    );
  }
}
