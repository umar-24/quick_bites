import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/features/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';
import 'package:quick_bites/features/services/auth_gate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      Get.off(() => AuthGate());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(quickBitesLogo),
      ),
    );
  }
}