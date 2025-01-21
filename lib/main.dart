import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quick_bites/features/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: OnboardingScreen(),
      theme: ThemeData(
        // primarySwatch: Colors.orange,
        // fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}