import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/widgets/heading_text.dart';
import 'package:quick_bites/core/widgets/my_list_tile.dart';

import '../../core/constants/images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeadingText(
                        text: 'Profile Setting',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: 25),
                    CircleAvatar(
                        radius: 70, backgroundImage: AssetImage(profileImage)),
                    SizedBox(height: 15),
                    Text(
                      "Steve John",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "steveJohn@gmail.com",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Divider(),
              Text(
                "Profile",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              MyListTile(
                leading: Icon(Iconsax.user),
                title: "Personal Data",
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}


