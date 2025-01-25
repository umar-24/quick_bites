import 'package:flutter/material.dart';
import 'package:quick_bites/features/categories/burger_category.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/categories_container.dart';
import 'package:quick_bites/core/widgets/main_header.dart';
import 'package:quick_bites/core/widgets/main_headings.dart';
import 'package:quick_bites/features/home/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = "Home";
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
      switch (category) {
        case "Burger":
          _pageController.jumpToPage(1);
          break;
        case "Sandwich":
          _pageController.jumpToPage(2);
          break;
        case "Juice":
          _pageController.jumpToPage(3);
          break;
        case "Pizza":
          _pageController.jumpToPage(4);
          break;
        default:
          _pageController.jumpToPage(0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      body: Column(
        children: [
          MainHeader(),
          SizedBox(height: screenHeight * 0.02),
          Expanded(
            child: Column(
              children: [
                const MainHeading(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoriesContainer(
                          image: burger,
                          text: "Burger",
                          isSelected: selectedCategory == "Burger",
                          onSelected: (isSelected) => _onCategorySelected("Burger"),
                        ),
                        CategoriesContainer(
                          image: sandWich,
                          text: "Sandwich",
                          isSelected: selectedCategory == "Sandwich",
                          onSelected: (isSelected) => _onCategorySelected("Sandwich"),
                        ),
                        CategoriesContainer(
                          image: juice,
                          text: "Juice",
                          isSelected: selectedCategory == "Juice",
                          onSelected: (isSelected) => _onCategorySelected("Juice"),
                        ),
                        CategoriesContainer(
                          image: pizza,
                          text: "Pizza",
                          isSelected: selectedCategory == "Pizza",
                          onSelected: (isSelected) => _onCategorySelected("Pizza"),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: [
                      ProductsScreen(),
                      BurgerCategory(),
                      Center(child: Text("Sandwich Page")),
                      Center(child: Text("Juice Page")),
                      Center(child: Text("Pizza Page")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



