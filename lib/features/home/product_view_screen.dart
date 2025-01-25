import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/draggable_scrollable_widget.dart';
import 'package:quick_bites/core/widgets/header_buttons.dart';

class ProductViewScreen extends StatefulWidget {
  const ProductViewScreen({super.key});

  @override
  State<ProductViewScreen> createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {
  final ScrollController scrollController = ScrollController();
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(burger8, width: double.infinity,),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              child: Row(
                children: [
                  HeaderButtons(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    icon: Iconsax.arrow_left_2,
                  ),
                  const Spacer(),
                  HeaderButtons(onTap: (){}, icon: Iconsax.heart),
                ],
              ),
            ),
          ),
          DraggableScrollableWidget(scrollController: scrollController),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (quantity > 1) quantity--;
                    });
                  },
                  icon: const Icon(Icons.remove, color: Colors.black),
                ),
                Text(
                  '$quantity',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                  icon: const Icon(Icons.add, color: Colors.black),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Add to cart logic
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                backgroundColor: orangeColor,
              ),
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}