import 'package:flutter/material.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/circular_buttons.dart';
import 'package:quick_bites/core/widgets/product_card.dart';
import 'package:quick_bites/core/widgets/subtitle_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          CircularButtons(
            height: 40,
            width: 40,
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, ))
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SubtitleText(text: "Delivey Location", fontSize: 14, color: Colors.grey,),
                const Spacer(),
                SizedBox(
                  height: 40,
                  width: 140,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: orangeColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                    onPressed: (){}, child: Text("Change Location", style: TextStyle(color: orangeColor, fontSize: 11),)),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Text("Home", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ProductCard(imageUrl: sandwich5, title: "SAndiwch", description: "this is specual ", price: 213)
          ],
        ),
      ),
    );
  }
}