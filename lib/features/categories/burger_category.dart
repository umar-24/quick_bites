import 'package:flutter/material.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/product_card_vertical.dart';

class BurgerCategory extends StatefulWidget {
  const BurgerCategory({super.key});

  @override
  State<BurgerCategory> createState() => _BurgerCategoryState();
}

class _BurgerCategoryState extends State<BurgerCategory> {
  final List<String> burgerImages = [
    burger1,
    burger2,
    burger3,
    burger4,
    burger5,
    burger6,
    burger7,
    burger8,
  ];
  final List<String> burgerNames = [
    'Cheesy Avalanche',
    'Smoky Bandit',
    'Firecracker Blast',
    'Cheese Burst',
    'Classic Royale ',
    'The Big Rancher',
    'Veggie Volcano',
    'Breakfast Beast ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burgers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.75,
            ),
            itemCount: burgerImages.length,
            itemBuilder: (context, index) {
              return ProductCardVertical(
                imagePath: burgerImages[index],
                title: burgerNames[index],
                rating: 4.0, // Default rating value
                distance: '2.5 km',
                price: '\PKR${(index + 1) * 500}',
              );
            },
          ),
        ),
      ),
    );
  }
}