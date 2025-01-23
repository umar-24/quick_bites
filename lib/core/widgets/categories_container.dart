import 'package:flutter/material.dart';
import 'package:quick_bites/core/constants/colors.dart';

class CategoriesContainer extends StatefulWidget {
  final String image;
  final String text;
  final VoidCallback? onTap;
  final bool isSelected;
  final Function(bool) onSelected;

  const CategoriesContainer({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  _CategoriesContainerState createState() => _CategoriesContainerState();
}

class _CategoriesContainerState extends State<CategoriesContainer> {
  void _handleTap() {
    widget.onSelected(!widget.isSelected);
    if (widget.onTap != null) {
      widget.onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: 110,
        width: 100,
        decoration: BoxDecoration(
          color: widget.isSelected ? orangeColor : Colors.white,
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
                color: widget.isSelected ? Colors.white : Colors.black,
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