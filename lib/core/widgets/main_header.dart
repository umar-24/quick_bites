import 'package:flutter/material.dart';
import 'package:quick_bites/core/constants/images.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Stack(
      children: [
        /// 🖼️ **Background Image**
        SizedBox(
          height: screenHeight * 0.35, // ✅ Image height is now responsive
          width: double.infinity,
          child: Image.asset(
            bannerImage1,
            fit: BoxFit.cover,
          ),
        ),

        /// 📍 **Your Location Row**
        Positioned(
          top: screenHeight * 0.06,
          left: screenWidth * 0.03,
          child: Row(
            children: [
              Text(
                "Your Location",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.065 * textScale, // ✅ Responsive font
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                  size: screenWidth * 0.07, // ✅ Responsive icon size
                ),
              ),
            ],
          ),
        ),

        /// 🏠 **Delivering To**
        Positioned(
          top: screenHeight * 0.14,
          left: screenWidth * 0.03,
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white,
                size: screenWidth * 0.05, // ✅ Responsive icon size
              ),
              SizedBox(width: screenWidth * 0.01), // ✅ Adjust spacing
              Text(
                "Delivering to",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.04 * textScale, // ✅ Responsive font
                ),
              ),
              Text(
                " 123, Random Street",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.04 * textScale, // ✅ Responsive font
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        /// 🍽️ **Headline Text**
        Positioned(
          top: screenHeight * 0.17,
          left: screenWidth * 0.03,
          child: Text(
            "Provide the best\nfood for you",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.1 * textScale, // ✅ Responsive font
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
