import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/core/constants/images.dart';
import 'package:quick_bites/core/widgets/botton_navigation_bar.dart';
import 'package:quick_bites/core/widgets/circular_buttons.dart';
import 'package:quick_bites/core/widgets/heading_text.dart';
import 'package:quick_bites/core/widgets/my_button.dart';
import 'package:quick_bites/core/widgets/my_divider.dart';
import 'package:quick_bites/core/widgets/my_textfeild.dart';
import 'package:quick_bites/core/widgets/subtitle_text.dart';
import 'package:quick_bites/features/auth/screens/forgot_password_screen.dart';
import 'package:quick_bites/features/auth/screens/sign_up_screens.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  // =====================FORM CONTROLLERS==========================
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isObscured = true;
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
              text: 'Login to your\naccount.',
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
            const SubtitleText(
                text: "Please sign in to your account",
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
              obsecureText: _isObscured,
              controller: passwordController,
              titleText: "Password",
              hintText: "Password",
              icon: IconButton(onPressed: (){
                setState(() {
                  _isObscured = !_isObscured;
                });
              }, icon: Icon(_isObscured? Iconsax.eye_slash : Iconsax.eye)),
            ),
            //========`FORGOT PASSWORD` BUTTON================
            Row(
              children: [
              const Spacer(),
              TextButton(
                  onPressed: () {
                    Get.off(forgetpassward());
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: orangeColor),
                )
                )
              ]
            ),
            //========`SIGN IN` BUTTON================
            MyButton(title: "Sign In", onTap: () {
              Get.off(() => const BottonNavBar());
            }),
            const SizedBox(
              height: 10,
            ),
            //========`OR SIGN IN WITH` TEXT================
            const MyDivider(
              middleText: "Or sign in with",
              textColor: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            //========`SOCIAL MEDIA BUTTONS`================
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularButtons(icon: Image.asset(googleLogo,height: 30,), onTap: (){},),
                CircularButtons(icon: Image.asset(facebookLogo,height: 30,), onTap: (){},),
                CircularButtons(icon: Image.asset(appleLogo, height: 30,), onTap: (){},),
              ],
            ),
             const SizedBox(
              height: 10,
            ),
            //========`DON'T HAVE AN ACCOUNT?` TEXT================
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
                    Get.off(const SignUpScreens());
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


