import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/string.dart';
import 'package:stepexpertx/ui/views/custom_widgets/custom_buttons.dart';
import 'package:stepexpertx/ui/views/screens/tabbar_screens/tabbarscreen.dart';

class SubscriptionScreens extends StatelessWidget {
  const SubscriptionScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("$staticAssets/splash.png"),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 390,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "SUBCRIPTION",
                      style: GoogleFonts.poppins(
                        color: Color(0xffFE2B5F),
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Image.asset("$staticAssets/Line11.png", scale: 3),
                    Text(
                      "Subscribe now to start using \n Step Xpert and achieve your fitness goals!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff575555),
                      ),
                    ),
                    SizedBox(height: 30),
                    CustomButtons1(
                      boxColor: primaryColor,
                      height: 50,
                      width: 253,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Monthly",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "3/months",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    CustomButtons1(
                      height: 48,
                      width: 253,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Yearly",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "12/months",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        Get.to(Tabbarscreen());
                      },
                      child: Text(
                        "Cancle",
                        style: TextStyle(color: Color(0xffABA6A6)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ///
  ///  dialouge box
  ///
}
