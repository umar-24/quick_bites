import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';

// import '../../app/shared/fonts.dart';
// import '../../shared/exports/export_boiler_plate.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Quick Bites - Johar Town',
          style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.045,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: const Icon(Iconsax.send), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          buildDeliveryTime(context),
          Expanded(
            child: ListView(
              children: [
                buildMenuItem(
                  context,
                  'Tandoori Chicken (Ala Carte)',
                  '\$9.00',
                  'https://cdn.cosmos.so/5d5e1cfa-4bd5-4f21-bc7a-86b385274389?format=jpeg',
                  description:
                      'Awesome tandoori chicken with a hint of spiciness. Served with lettuce, tomato, onion, and our signature tandoori sauce.',
                ),
                buildMenuItem(
                  context,
                  'Tandoori Chicken (Cookie Meal)',
                  '\$12.90',
                  'https://cdn.cosmos.so/15fb85bc-1bdd-426a-8b2e-ac7a78622a5c?format=jpeg',
                  description:
                      'Comes with Tandoori Chicken Sub, 2 pieces of cookies and 1 drink.',
                ),
                buildMenuItem(
                  context,
                  'Tandoori Chicken (Chips Meal)',
                  '\$12.90',
                  'https://cdn.cosmos.so/9c8ce3e7-34a5-4718-afff-07fc26009360?format=jpeg',
                  description:
                      'Comes with Tandoori Chicken Sub, 1 chips and 1 drink.',
                ),
                buildMenuItem(
                  context,
                  'Bandung Cookies (3 pcs)',
                  '\$3.50',
                  'https://cdn.cosmos.so/60325b9a-d477-4c1c-b373-30a2c11bbd89?format=jpeg',
                  description:
                      "Soft and chewy cookies with a unique Bandung flavor.",
                ),
              ],
            ),
          ),
          buildBasketSection(context),
        ],
      ),
    );
  }

  Widget buildDeliveryTime(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: orangeColor,
                child: Icon(
                  Iconsax.clock,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'Deliver from 12:00 - 12:30',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Change',
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(
    BuildContext context,
    String title,
    String price,
    String imageUrl, {
    String? description,
    String? quantity,
  }) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (quantity != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(quantity, style: TextStyle(color: Colors.grey[600])),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (description != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      description,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: screenWidth * 0.03,
                      ),
                    ),
                  ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(
                    color: orangeColor,
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: screenWidth * 0.3,
              height: screenWidth * 0.3,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBasketSection(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Add \$3.50 to get free delivery',
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.045,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orange[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'View Basket',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '\$14.50',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.bold,
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
