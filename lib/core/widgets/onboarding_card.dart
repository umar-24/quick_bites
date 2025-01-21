import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quick_bites/core/constants/colors.dart';

class OnboardingCard extends StatelessWidget {
  final String animation, title, description;
  final PageController pageController;
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final bool isLastPage;

  const OnboardingCard({
    super.key,
    required this.animation,
    required this.title,
    required this.description,
    required this.pageController,
    required this.onNext,
    required this.onSkip,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.85, // Adjust height relative to screen size
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.1), // Responsive padding
                child: Container(
                  height: screenHeight * 0.35, // Responsive Lottie height
                  child: Lottie.asset(animation, fit: BoxFit.contain),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: orangeColor,
                          fontSize: screenWidth * 0.08, // Responsive font size
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.07,
                      vertical: screenHeight * 0.015,
                    ),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: screenWidth * 0.04, // Responsive font size
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                      vertical: screenHeight * 0.02,
                    ),
                    child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: onNext,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                          shape: CircleBorder(),
                          backgroundColor: orangeColor,
                        ),
                        // child: Text(
                        //   isLastPage ? "Get Started" : "Next",
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: screenWidth * 0.045, // Responsive font size
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        child: Icon(
                         isLastPage? Icons.done: Icons.arrow_forward,
                          color: Colors.white,
                          size: screenWidth * 0.08, // Responsive icon size
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          if (!isLastPage)
            Positioned(
              right: 16,
              top: 15,
              child: TextButton(
                onPressed: onSkip,
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: orangeColor,
                    fontSize: screenWidth * 0.04, // Responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}