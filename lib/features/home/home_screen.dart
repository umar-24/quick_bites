import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quick_bites/core/widgets/product_card_vertical.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/categories_container.dart';
import 'package:quick_bites/core/widgets/main_header.dart';
import 'package:quick_bites/core/widgets/main_headings.dart';
import 'package:quick_bites/features/categories/burger_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> burgerImages = [
    burger1, burger2, pizza4, pizza1, pizza2,
    sandwich1, pizza3, burger3, sandwich5, burger4, pizza4
  ];
  
  final List<String> burgerNames = [
    'Cheesy Avalanche', 'Smoky Bandit', 'Firecracker Blast', 'Cheese Burst',
    'Classic Royale', 'The Big Rancher', 'Veggie Volcano', 'Breakfast Beast',
    'Breakfast Beast', 'The Big Rancher', 'Breakfast Beast'
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainHeader(),
            SizedBox(height: screenHeight * 0.02),
            const MainHeading(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoriesContainer(image: burger, text: "Burger", onTap: ()=> Get.to(BurgerCategory()),),
                    CategoriesContainer(image: pizza, text: "Pizza",onTap: ()=> Get.to(BurgerCategory()),),
                    CategoriesContainer(image: sandWich, text: "Sandwich",onTap: ()=> Get.to(BurgerCategory()),),
                    CategoriesContainer(image: juice, text: "Juices",onTap: ()=> Get.to(BurgerCategory()),),
                  ],
                ),
              ),
            ),

            // SizedBox(height: screenHeight * 0.0),

            /// ✅ GRIDVIEW.BUILDER PROPERLY ADJUSTED
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: GridView.builder(
                shrinkWrap: true, // GridView apne parent ke andar adjust hoga
                physics: NeverScrollableScrollPhysics(), // GridView scroll nahi karega
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: burgerImages.length,
                itemBuilder: (context, index) {
                  return ProductCardVertical(
                    imagePath: burgerImages[index],
                    title: burgerNames[index],
                    rating: 4.0,
                    distance: '2.5 km',
                    price: '\PKR${(index + 1) * 500}',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
