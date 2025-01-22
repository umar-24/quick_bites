import 'package:flutter/material.dart';

class CircularButtons extends StatelessWidget {
  final String imagePath;
  final void Function()? onTap;
  const CircularButtons({super.key, required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: Center(child: Image.asset(imagePath, height: 30,))
      ),
    );
  }
}