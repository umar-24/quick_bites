import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';

class ProductCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;
  final double price;
  final int initialQuantity;
  final Function(bool?)? onCheckboxChanged;
  final Function(int quantity)? onQuantityChanged;
  final VoidCallback? onDelete;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    this.initialQuantity = 1,
    this.onCheckboxChanged,
    this.onQuantityChanged,
    this.onDelete,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int quantity = 1;
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    quantity = widget.initialQuantity;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Checkbox
            Checkbox(
              value: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = value!;
                });
                if (widget.onCheckboxChanged != null) {
                  widget.onCheckboxChanged!(value);
                }
              },
            ),
            const SizedBox(width: 8),
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            // Expanded or Flexible to give constraints
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // const SizedBox(height: 4),
                  // Product Description
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  // const SizedBox(height: 8),
                  // Product Price
                  Text(
                    '\$${widget.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: orangeColor
                    ),
                  ),
                  // const SizedBox(height: 8),
                  // Increment/Decrement Buttons
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          if (quantity > 1) {
                            setState(() {
                              quantity--;
                            });
                            if (widget.onQuantityChanged != null) {
                              widget.onQuantityChanged!(quantity);
                            }
                          }
                        },
                        icon: const Icon(Icons.remove),
                        // color: Colors.red,
                      ),
                      Text(
                        quantity.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                          if (widget.onQuantityChanged != null) {
                            widget.onQuantityChanged!(quantity);
                          }
                        },
                        icon: const Icon(Icons.add),
                        // color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Delete Button
            IconButton(
              onPressed: widget.onDelete,
              icon:  Icon(
                Iconsax.bitcoin_card,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
