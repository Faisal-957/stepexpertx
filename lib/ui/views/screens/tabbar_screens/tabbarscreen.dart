import 'package:flutter/material.dart';
import 'package:stepexpertx/core/constant/colors.dart';

import 'package:stepexpertx/core/constant/string.dart';
import 'package:stepexpertx/ui/views/screens/tabbar_screens/login_screen.dart';
import 'package:stepexpertx/ui/views/screens/tabbar_screens/signup_screen.dart';

class Tabbarscreen extends StatelessWidget {
  const Tabbarscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // ✅ Add this
      length: 2, // Login + Sign Up
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("$staticAssets/signup.png", fit: BoxFit.cover),

            Positioned(
              top: 256,
              left: 19,
              right: 19,
              child: Container(
                height: 443,
                width: 353,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(25),
                        gradient: const LinearGradient(
                          colors: [Color(0xffFE2B5F), Color(0xffD02E56)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Image.asset("$staticAssets/bicep.png", scale: 4),
                    ),
                    const SizedBox(height: 5),

                    Container(
                      padding: EdgeInsets.only(left: 90, right: 90),
                      child: TabBar(
                        labelColor: Color(0xffFE2B5F),
                        indicatorColor: Color(0xffFE2B5F),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        tabs: [
                          Tab(text: "Signup"),
                          Tab(text: "Login"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(
                        children: [SignupScreen(), LoginScreen()],
                        // children:                  [
                        //   Padding(
                        //     padding: const EdgeInsets.all(20),
                        //     child: Column(
                        //       children: [
                        //         TextFormField(
                        //           decoration: authdecoration.copyWith(
                        //             hintText: "User name ",
                        //           ),
                        //         ),
                        //         SizedBox(height: 10),
                        //         TextFormField(
                        //           decoration: authdecoration.copyWith(
                        //             hintText: "Email",
                        //           ),
                        //         ),
                        //         SizedBox(height: 10),
                        //         TextFormField(
                        //           obscureText: true,
                        //           decoration: authdecoration.copyWith(
                        //             hintText: "Password",
                        //           ),
                        //         ),
                        //         SizedBox(height: 20),
                        //         CustomButtons1(
                        //           onTap: () {},
                        //           linearGradient: LinearGradient(
                        //             colors: [darkpink, primaryColor],
                        //           ),
                        //           child: Text(
                        //             "SignUp",
                        //             style: TextStyle(
                        //               color: whiteColor,
                        //               fontWeight: FontWeight.bold,
                        //             ),
                        //           ),
                        //         ),
                        //         SizedBox(height: 10),
                        //         Text(
                        //           "Already have an account? Login",
                        //           style: style16.copyWith(
                        //             color: Color(0xff909090),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
