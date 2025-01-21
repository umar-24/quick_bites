import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextfeild extends StatelessWidget {
  final String titleText, hintText;
  final bool? obsecureText;
  final TextEditingController controller;
  final Widget? icon;
  const MyTextfeild({super.key, required this.titleText, required this.hintText, this.obsecureText, required this.controller, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleText, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        TextFormField(
          controller: controller,
          obscureText: obsecureText ?? false,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black),
            ),
            suffixIcon: icon,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}