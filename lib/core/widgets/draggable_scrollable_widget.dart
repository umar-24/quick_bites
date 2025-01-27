import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/product_card_horizontal.dart';

class DraggableScrollableWidget extends StatelessWidget {
  final ScrollController scrollController;

  const DraggableScrollableWidget({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
       initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
      builder: (context, scrollController) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 35,
                      color: Colors.black12,
                    ),
                  ],
                ),
              ),
              const Text(
                "Burger with meat 🍔",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "PKR 750",
                style: TextStyle(
                  fontSize: 22,
                  color: orangeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
             Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Iconsax.clock,
                          color: orangeColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "30-40 min",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Iconsax.location,
                          color: orangeColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "2.5 km",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Iconsax.star1,
                          color: orangeColor,
                        ),
                         SizedBox(width: 10),
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
             ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(height: 4),
              ),
              const Text(
                "Description",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(height: 4),
              ),
              
              ProductCardHorizontal(imageUrl: pizza1, title: "Pizza", description: "large piizaa", price: 231, onAddToCart: (){}),
              ProductCardHorizontal(imageUrl: sandwich2, title: "Pizza", description: "large piizaa", price: 231, onAddToCart: (){}),
              ProductCardHorizontal(imageUrl: burger10, title: "Pizza", description: "large piizaa", price: 231, onAddToCart: (){}),
              ProductCardHorizontal(imageUrl: sandwich5, title: "Pizza", description: "large piizaa", price: 231, onAddToCart: (){}),
            ],
          ),
        ),
      );
      }
    );
  }
}
