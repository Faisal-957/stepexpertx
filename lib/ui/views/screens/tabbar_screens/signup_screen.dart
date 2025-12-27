import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:stepexpertx/core/constant/auth_decoration.dart';
import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/text_style.dart';
import 'package:stepexpertx/ui/views/custom_widgets/custom_buttons.dart';
import 'package:stepexpertx/ui/views/screens/root_screen/root_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: authdecoration.copyWith(hintText: "User name "),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: authdecoration.copyWith(hintText: "Email"),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: authdecoration.copyWith(hintText: "Password"),
              ),
              SizedBox(height: 20),
              CustomButtons1(
                height: 42,
                width: 297.36627197265625,
                onTap: () {
                  Get.to(RootScreen());
                },
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
                    style: style16.copyWith(color: Color(0xff909090)),
                  ),
                  GestureDetector(
                    onTap: () {
                      DefaultTabController.of(context).animateTo(1);
                    },
                    child: Text(
                      "login",
                      style: style16.copyWith(color: primaryColor),
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
