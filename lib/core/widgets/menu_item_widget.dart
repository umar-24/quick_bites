import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final String? description;
  final String? quantity;

  const MenuItemWidget({
    Key? key,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.description,
    this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (quantity != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(quantity!, style: TextStyle(color: Colors.grey[600])),
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
                      description!,
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
                    color: Colors.orange, // You can customize the color
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
            child: Image.asset(
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
}
