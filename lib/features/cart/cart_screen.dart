import 'package:flutter/material.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/circular_buttons.dart';
import 'package:quick_bites/core/widgets/product_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          CircularButtons(
            height: 40,
            width: 40,
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, ))
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              
            ProductCard(imageUrl: sandwich5, title: "SAndiwch", description: "this is specual ", price: 213),
            ProductCard(imageUrl: sandwich3, title: "SAndiwch", description: "this is specual ", price: 213),
            ProductCard(imageUrl: sandwich1, title: "SAndiwch", description: "this is specual ", price: 213),
            ProductCard(imageUrl: sandwich4, title: "SAndiwch", description: "this is specual ", price: 213),
          ],
        ), 
      ),
    );
  }
}