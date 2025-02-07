import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quick_bites/core/constants/colors.dart';
import 'package:quick_bites/core/widgets/heading_text.dart';
import 'package:quick_bites/core/widgets/my_button.dart';
import 'package:quick_bites/core/widgets/my_textfeild.dart';
import 'package:quick_bites/core/widgets/subtitle_text.dart';

class forgetpassward extends StatefulWidget {
  const forgetpassward({super.key});

  @override
  State<forgetpassward> createState() => _forgetpasswardState();
}

class _forgetpasswardState extends State<forgetpassward> {
  final TextEditingController emailController = TextEditingController();
  
  // =====================Firbase ==========================
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool loading = false;
  void forgetPassword(){
    setState(() {
      loading = true; 
    });
    _auth.sendPasswordResetEmail(email: emailController.text.toString()).then((value){
      setState(() {
        loading = false;
      });
      // Show success snackbar
      Get.snackbar(
        "Success",
        "Password reset link sent to your email",
        backgroundColor: orangeColor,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }).catchError((error){
      setState(() {
        loading = false;
      });
      // Show error snackbar
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              HeadingText(text: 'Forgot Password?', fontSize:38, fontWeight: FontWeight.bold),
              SizedBox(height: 10,),
              SubtitleText(text: 'Enter your Email Address and we ill send you\nconfirmation code to reset your password', fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey,),
              SizedBox(height: 20,),
              MyTextfeild(titleText: 'Email Address', hintText: 'Enter Email', controller: emailController),
             SizedBox(height: 20),
              MyButton(title: 'Continue', loading: loading, onTap: (){
                forgetPassword();
              },)
            ],


          ),


        ),

      ),

    );

  }
}
