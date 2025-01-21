import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  RxInt currentPageIndex = 0.obs;

  void updatePageIndex(int index) {
    currentPageIndex.value = index;
  }

  void goToNextPage(PageController controller) {
    if (currentPageIndex.value < 2) {
      controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void skipToLastPage(PageController controller) {
    controller.jumpToPage(2);
  }
}
