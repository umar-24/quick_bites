import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/core/widgets/heading_text.dart';
import 'package:quick_bites/core/widgets/my_button.dart';
import 'package:quick_bites/core/widgets/my_divider.dart';
import 'package:quick_bites/core/widgets/my_textfeild.dart';
import 'package:quick_bites/core/widgets/subtitle_text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingText(
              text: 'Login to your\naccount.',
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
            const SubtitleText(
                text: "Please sign in to your account",
                fontSize: 20,
                color: Colors.grey),
            const SizedBox(
              height: 20,
            ),
            MyTextfeild(
                titleText: "Email Address",
                hintText: "Enter Email",
                controller: emailController),
            const SizedBox(
              height: 20,
            ),
            MyTextfeild(
              controller: passwordController,
              titleText: "Password",
              hintText: "Password",
              icon: const Icon(Iconsax.eye_slash),
            ),
            Row(
              children: [
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: orangeColor),
                )
                )
              ]
            ),
            MyButton(title: "Sign In", onTap: () {}),
            const SizedBox(
              height: 20,
            ),
            const MyDivider(
              middleText: "Or sign in with",
              textColor: Colors.grey,
            ),
          ],
        ),
      ),
    ));
  }
}


