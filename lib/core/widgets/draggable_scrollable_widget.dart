import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:quick_bites/core/constants/colors.dart';

class DraggableScrollableWidget extends StatelessWidget {
  final ScrollController scrollController;

  const DraggableScrollableWidget({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
       initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
      builder: (context, scrollController) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 35,
                      color: Colors.black12,
                    ),
                  ],
                ),
              ),
              Text(
                "Burger with meat 🍔",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "PKR 750",
                style: TextStyle(
                  fontSize: 22,
                  color: orangeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
             Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15),
              ),
             ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(height: 4),
              ),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(height: 4),
              ),
              
              
            ],
          ),
        ),
      );
      }
    );
  }
}
