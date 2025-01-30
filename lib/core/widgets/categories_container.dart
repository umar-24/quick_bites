import 'package:flutter/material.dart';
import 'package:quick_bites/core/constants/colors.dart';

class CategoriesContainer extends StatefulWidget {
  final String image;
  final String text;
  final VoidCallback? onTap;

  const CategoriesContainer({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
  });

  @override
  _CategoriesContainerState createState() => _CategoriesContainerState();
}

class _CategoriesContainerState extends State<CategoriesContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: 110,
        width: 100,
        decoration: BoxDecoration(
          color: orangeColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.image, height: 50,),
            const SizedBox(height: 10),
            Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}