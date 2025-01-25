import 'package:flutter/material.dart';

class CircularButtons extends StatelessWidget {
  final Widget? icon;
  final void Function()? onTap;
  final double? height, width;
  const CircularButtons({super.key, required this.icon, this.onTap, this.height = 60, this.width = 60});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: Center(child: icon)
      ),
    );
  }
}