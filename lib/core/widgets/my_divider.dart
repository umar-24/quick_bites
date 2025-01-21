import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final String middleText;
  final Color? textColor;
  const MyDivider({
    super.key, required this.middleText, this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(child: Divider()),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          middleText,
          style: TextStyle(
            color: textColor,
            
          ),
        ),
      ),
      Expanded(child: Divider()),
      ],
    );
  }
}