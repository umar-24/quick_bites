

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_bites/core/widgets/heading_text.dart';

import '../../core/constants/images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body : SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Center(child: HeadingText(text: 'Profile Setting', fontSize: 30, fontWeight: FontWeight.bold)),
        SizedBox(height: 25),
        CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage(profileImage)
        )
      ],
    ),
  ),

  );
  }
}
