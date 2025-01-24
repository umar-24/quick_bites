import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
          DraggableScrollableWidget(scrollController: scrollController)
        ],
      ),
    );
  }
}