import 'package:flutter/material.dart';
import 'package:quick_bites/categories/burger_category.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/categories_container.dart';
import 'package:quick_bites/core/widgets/main_header.dart';
import 'package:quick_bites/core/widgets/main_headings.dart';

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
    return Scaffold(
      body: Column(
        children: [
          MainHeader(),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                const MainHeading(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                const SizedBox(height: 20),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: [
                      Center(child: Text("Home Page - Random Products")),
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



