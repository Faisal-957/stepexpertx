import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:stepexpertx/core/constant/auth_decoration.dart';
import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/text_style.dart';
import 'package:stepexpertx/ui/views/custom_widgets/custom_buttons.dart';
import 'package:stepexpertx/ui/views/screens/root_screen/root_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
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

      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );

      Get.snackbar(
        "Success",
        "Login successful",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      Get.offAll(() => const RootScreen());
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Login Error",
        e.message ?? "Invalid email or password",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// EMAIL
          TextFormField(
            controller: emailController, // ✅ FIXED
            decoration: authdecoration.copyWith(hintText: "Email"),
          ),

          const SizedBox(height: 20),

          /// PASSWORD
          TextFormField(
            controller: passwordController, // ✅ FIXED
            obscureText: true,
            decoration: authdecoration.copyWith(hintText: "Password"),
          ),

          const SizedBox(height: 10),

          Text("forgot password?", style: style12.copyWith(color: Colors.red)),

          const SizedBox(height: 30),

          Center(
            child: CustomButtons1(
              height: 42,
              width: 297,
              onTap: login, // ✅ FIXED (auth call)
              linearGradient: LinearGradient(colors: [darkpink, primaryColor]),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account? ",
                style: style12.copyWith(color: Color(0xff909090)),
              ),
              GestureDetector(
                onTap: () {
                  DefaultTabController.of(context).animateTo(1);
                },
                child: Text(
                  "Signup",
                  style: style12.copyWith(color: primaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
