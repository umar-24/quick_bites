import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/features/categories/products_screen.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Text("Find By Category", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
          const Spacer(),
          TextButton(
            onPressed: ()=> Get.to(ProductsScreen()),
            child: const Text("See All", style: TextStyle(color: orangeColor, fontSize: 18),),
          )
        ],
      ),
    );
  }
}