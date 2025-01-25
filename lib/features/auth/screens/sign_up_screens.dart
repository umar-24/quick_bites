import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/circular_buttons.dart';
import 'package:quick_bites/core/widgets/heading_text.dart';
import 'package:quick_bites/core/widgets/my_button.dart';
import 'package:quick_bites/core/widgets/my_divider.dart';
import 'package:quick_bites/core/widgets/my_textfeild.dart';
import 'package:quick_bites/core/widgets/subtitle_text.dart';
import 'package:quick_bites/features/auth/screens/sign_in_screen.dart';

class SignUpScreens extends StatefulWidget {
  const SignUpScreens({super.key});

  @override
  State<SignUpScreens> createState() => _SignUpScreensState();
}

class _SignUpScreensState extends State<SignUpScreens> {

  // =====================FORM CONTROLLERS==========================
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isChecked = false;
  bool _isObsecured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingText(
              text: 'Create your new\naccount.',
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
            const SubtitleText(
                text: "create a account to start looking for your favourite food",
                fontSize: 20,
                color: Colors.grey),
            const SizedBox(
              height: 10,
            ),
            MyTextfeild(
                titleText: "Email Address",
                hintText: "Enter Email",
                controller: emailController),
            const SizedBox(
              height: 10,
            ),
            MyTextfeild(
                titleText: "User Name",
                hintText: "Enter Username",
                controller: emailController),
            const SizedBox(
              height: 10,
            ),
            MyTextfeild(
              obsecureText: _isObsecured,
              controller: passwordController,
              titleText: "Password",
              hintText: "Password",
              icon: IconButton(onPressed: (){setState(() {
                _isObsecured =!_isObsecured;
              });
              }, icon :Icon(_isObsecured? Iconsax.eye_slash :Iconsax.eye))
            ),
            const SizedBox(
              height: 10,
            ),
           Row(
            children: [
              Checkbox(
                activeColor: orangeColor,
                checkColor: Colors.white,
                value: isChecked, onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              }),
              const Expanded(
                child: Text.rich( TextSpan(
                  text: "I agree to the ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Terms of Services",
                      style: TextStyle(color: orangeColor),
                    ),
                    TextSpan(
                      text: " and ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(color: orangeColor),
                    ),
                  ],
                ),
                ),
              ),
            ],
           ),
           const SizedBox(
              height: 10,
            ),
            MyButton(title: "Sign Up", onTap: () {}),
            const SizedBox(
              height: 10,
            ),
            const MyDivider(
              middleText: "Or sign in with",
              textColor: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularButtons(imagePath: googleLogo, onTap: (){},),
                CircularButtons(imagePath: facebookLogo, onTap: (){},),
                CircularButtons(imagePath: appleLogo, onTap: (){},),
              ],
            ),
             const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SubtitleText(
                  text: "Don't have an account?",
                  fontSize: 16,
                  color: Colors.black,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const SignInScreen());
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: orangeColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}