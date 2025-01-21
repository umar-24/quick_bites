import 'package:flutter/material.dart';
import 'package:quick_bites/core/constants/colors.dart';

class MyButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool loading;
  final Color? color;
  const MyButton(
      {super.key,
      required this.title,
      this.onTap,
      this.loading = false,
      this.color = orangeColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(50)),
        child: Center(
            child: loading
                ? CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.white,
                  )
                : Text(
                    title,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
