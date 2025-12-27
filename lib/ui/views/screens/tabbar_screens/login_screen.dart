import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stepexpertx/core/constant/auth_decoration.dart';

import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/text_style.dart';
import 'package:stepexpertx/ui/views/custom_widgets/custom_buttons.dart';
import 'package:stepexpertx/ui/views/screens/root_screen/root_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: authdecoration.copyWith(hintText: "User name "),
            ),
            SizedBox(height: 20),

            TextFormField(
              obscureText: true,
              decoration: authdecoration.copyWith(hintText: "Password"),
            ),
            SizedBox(height: 10),
            Text(
              "forgot password?",
              style: style12.copyWith(color: Colors.red),
              textAlign: TextAlign.end,
            ),
            SizedBox(height: 30),
            Center(
              child: CustomButtons1(
                height: 42,
                width: 297.36627197265625,
                onTap: () {
                  Get.to(RootScreen());
                },
                linearGradient: LinearGradient(
                  colors: [darkpink, primaryColor],
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: style16.copyWith(color: Color(0xff909090)),
                ),
                GestureDetector(
                  onTap: () {
                    DefaultTabController.of(context).animateTo(0);
                  },
                  child: Text(
                    "Signup",
                    style: style16.copyWith(color: primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
