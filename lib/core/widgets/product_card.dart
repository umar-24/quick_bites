import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/core/widgets/main_headings.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Checkbox(
              activeColor: orangeColor,
              value: isSelected, onChanged: (bool? value) {
              setState(() {
                isSelected = value ?? false;
                if (widget.onCheckboxChanged != null) {
                  widget.onCheckboxChanged!(isSelected);
                }
              });
            }),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.imageUrl,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ========= Title =================
                Text("Burger", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                // ========= Description =================
                Text("This is special", style: const TextStyle(fontSize: 14, color: Colors.grey)),
                // ========= Price =================
                Text("PKR 750", style: const TextStyle(fontSize: 16, color: orangeColor, fontWeight: FontWeight.bold)),
                // ========= Quantity =================
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          quantity--;
                          if (widget.onQuantityChanged != null) {
                            widget.onQuantityChanged!(quantity);
                          }
                        });
                      },
                      icon: const Icon(Iconsax.minus, size: 20),
                    ),
                    Text(quantity.toString(), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          quantity++;
                          if (widget.onQuantityChanged != null) {
                            widget.onQuantityChanged!(quantity);
                          }
                        });
                      },
                      icon: const Icon(Iconsax.add, size: 20),
                    ),
                    const SizedBox(width: 40,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.red,))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
