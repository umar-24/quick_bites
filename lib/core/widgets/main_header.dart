import 'package:flutter/material.dart';
import 'package:quick_bites/core/constants/images.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(bannerImage1),
        Positioned(
          top: 45,
          left: 10,
          child: Row(
            children: [
              const Text(
                "Your Location",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        const Positioned(
          top: 100,
          left: 10,
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              Text(
                "Delivering to",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Text(
                " 123, Random Street",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 150,
          left: 10,
          child: Row(
            children: [
              Text(
                "Provide the best\nfood for you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
