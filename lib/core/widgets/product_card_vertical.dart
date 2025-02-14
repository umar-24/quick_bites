import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/features/categories/product_view_screen.dart';

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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return GestureDetector(
      onTap: () {
        debugPrint('Navigating to ProductViewScreen');
        Get.to(() => ProductViewScreen());
      },
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
                      height: screenHeight * 0.135,
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

              /// ✅ **Title (Text Overflow Fix)**
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // SizedBox(height: screenHeight * 0.005),

              /// ✅ **Row for Rating and Distance**
              Row(
                children: [
                  /// ⭐ **Rating Stars (Auto-Adjust)**
                  Icon(Iconsax.star, size: 16, color: orangeColor),
                  Icon(Iconsax.star, size: 16, color: orangeColor),
                  Icon(Iconsax.star, size: 16, color: orangeColor),

                  /// 📍 **Distance**
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(
                        Iconsax.location,
                        size: 16,
                        color: orangeColor,
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      Text(
                        distance,
                        style: TextStyle(
                          fontSize: screenWidth * 0.035 * textScale,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: screenHeight * 0.01),

              /// 💰 **Price (Now Responsive and Inside Card)**
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  price,
                  style: TextStyle(
                    fontSize: screenWidth * 0.05 * textScale, // **Scaling for Small Screens**
                    color: orangeColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
