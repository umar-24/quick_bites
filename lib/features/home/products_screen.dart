import 'package:flutter/material.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/product_card_vertical.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  final List<String> burgerImages = [
    burger1,
    burger2,
    pizza4,
    pizza1,
    pizza2,
    sandwich1,
    pizza3,
    burger3,
    sandwich5,
    burger4,
    pizza4
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
    'Breakfast Beast ',
    'The Big Rancher',
    'Breakfast Beast ',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                price: '\$${(index + 1) * 5}',
              );
            },
          ),
        ),
      ),
    );
  }
}