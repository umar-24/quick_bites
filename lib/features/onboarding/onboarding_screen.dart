import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/core/widgets/onboarding_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:quick_bites/features/onboarding/controller/onboarding_controller.dart';

import '../../core/constants/images.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 0);
  final OnboardingController _onboardingController = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    List<Widget> _onBoardingPages = [
      OnboardingCard(
        animation: animation1,
        title: "Welcome to Quick Bites",
        description:
            "Discover delicious meals from your favorite restaurants, delivered straight to your door.",
        pageController: _pageController,
        onNext: () => _onboardingController.goToNextPage(_pageController),
        onSkip: () => _onboardingController.skipToLastPage(_pageController),
        isLastPage: false,
      ),
      OnboardingCard(
        animation: animation2,
        title: "Browse Your Favorites",
        description:
            "Explore a wide range of cuisines and menus tailored to your taste.",
        pageController: _pageController,
        onNext: () => _onboardingController.goToNextPage(_pageController),
        onSkip: () => _onboardingController.skipToLastPage(_pageController),
        isLastPage: false,
      ),
      OnboardingCard(
        animation: animation3,
        title: "Track Your Order",
        description:
            "Get real-time updates on your order status and estimated delivery time.",
        pageController: _pageController,
        onNext: () => Get.offNamed('/login'),
        onSkip: () => _onboardingController.skipToLastPage(_pageController),
        isLastPage: true,
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  _onboardingController.updatePageIndex(index);
                },
                children: _onBoardingPages,
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: _onBoardingPages.length,
              effect: const ExpandingDotsEffect(
                dotWidth: 10,
                dotHeight: 7,
                activeDotColor: orangeColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
