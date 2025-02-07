import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/core/widgets/heading_text.dart';
import 'package:quick_bites/core/widgets/my_list_tile.dart';
import 'package:quick_bites/features/auth/screens/sign_in_screen.dart';
import 'package:quick_bites/settings/settings_screen.dart';

import '../../core/constants/images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signOut() async {
    await _auth.signOut().then((value) {
      Get.snackbar(
        "Success",
        "Sign out successful",
        backgroundColor: orangeColor,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.offAll(() => SignInScreen());
    }).catchError((error) {
      Get.snackbar(
        "Error",
        error.toString(),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
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
                MyListTile(
                  leading: Icon(Iconsax.settings),
                  title: "Setting",
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){
                    Get.to(SettingsScreen());
                  },
                ),
                MyListTile(
                  leading: Icon(Iconsax.card),
                  title: "Extra Card",
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){},
                ),
                Text(
                  "Support",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
            
                MyListTile(
                  leading: Icon(Iconsax.message_question),
                  title: "Help Center",
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){},
                ),
                MyListTile(
                  leading: Icon(Iconsax.profile_delete),
                  title: "Request Account Deletion",
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){},
                ),
                MyListTile(
                  leading: Icon(Iconsax.add),
                  title: "Add another account",
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){},
                ),
                const SizedBox(height: 10),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(color: Colors.red),
                ),
                onPressed: (){
                  signOut();
                }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Iconsax.logout,color: Colors.red,),
                  SizedBox(width: 10),
                  Text("Sign out",style: TextStyle(color: Colors.red),)
                ],
              ),
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


