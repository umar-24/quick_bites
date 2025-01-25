import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/features/home/product_view_screen.dart';

class ProductCardVertical extends StatelessWidget {
  final String imagePath;
  final String title;
  final double rating;
  final String distance;
  final String price;

  const ProductCardVertical({
    super.key,
    required this.imagePath,
    required this.title,
    required this.rating,
    required this.distance,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => Get.to(ProductViewScreen()),
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(screenWidth * 0.03),
        ),
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(screenWidth * 0.03),
                child: Stack(
                  children: [
                    Image.asset(
                      imagePath,
                      height: screenHeight * 0.15,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: screenHeight * 0.01,
                      right: screenWidth * 0.02,
                      child: Container(
                        height: screenWidth * 0.1,
                        width: screenWidth * 0.1,
                        padding: EdgeInsets.all(screenWidth * 0.01),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Iconsax.heart,
                          size: 20,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                title,
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: screenWidth * 0.04,
                    itemPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.002),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: orangeColor,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(
                        Iconsax.location,
                        size: 16,
                        color: orangeColor,
                      ),
                      Text(
                        distance,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                price,
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  color: orangeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
