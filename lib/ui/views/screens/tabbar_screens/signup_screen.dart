import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:stepexpertx/core/constant/auth_decoration.dart';
import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/text_style.dart';
import 'package:stepexpertx/ui/views/custom_widgets/custom_buttons.dart';
import 'package:stepexpertx/ui/views/screens/root_screen/root_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUp() async {
    try {
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        Get.snackbar(
          "Error",
          "Email or password cannot be empty",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        return;
      }

      // Firebase signup
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );

      // Success
      print("Signup successful: ${user.user?.email}");
      Get.snackbar(
        "Success",
        "Signup successful: ${user.user?.email}",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      // Navigate to RootScreen
      Get.offAll(() => const RootScreen());
    } on FirebaseAuthException catch (e) {
      print("FirebaseAuth Error Code: ${e.code}");
      print("FirebaseAuth Error Message: ${e.message}");

      Get.snackbar(
        "Signup Error",
        e.message ?? "Something went wrong",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } catch (e) {
      print("Unknown error: $e");
      Get.snackbar(
        "Signup Error",
        "Something went wrong",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: authdecoration.copyWith(hintText: "User name"),
              ),
              SizedBox(height: 5.h),

              TextFormField(
                controller: emailController,
                decoration: authdecoration.copyWith(hintText: "Email"),
              ),
              SizedBox(height: 5.h),

              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: authdecoration.copyWith(hintText: "Password"),
              ),
              SizedBox(height: 20),

              CustomButtons1(
                height: 42.h,
                width: 297.36.w,
                onTap: signUp,
                linearGradient: LinearGradient(
                  colors: [darkpink, primaryColor],
                ),
                child: Text(
                  "SignUp",
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: style12.copyWith(color: Color(0xff909090)),
                  ),
                  GestureDetector(
                    onTap: () {
                      DefaultTabController.of(context).animateTo(1);
                    },
                    child: Text(
                      "login",
                      style: style12.copyWith(color: primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
