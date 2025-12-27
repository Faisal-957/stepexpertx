import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stepexpertx/core/constant/auth_decoration.dart';
import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/string.dart';
import 'package:stepexpertx/core/constant/text_style.dart';
import 'package:stepexpertx/ui/views/custom_widgets/custom_buttons.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 179,
                  width: double.infinity,
                  color: primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios, color: whiteColor),
                          120.horizontalSpace,

                          Text(
                            "Edit Profile",
                            style: style16.copyWith(color: whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      border: BoxBorder.all(color: whiteColor, width: 4),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('$staticAssets/profileedit.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            80.verticalSpace,
            Text(
              "Change Picture",
              style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Card(
                    child: TextField(
                      decoration: authdecoration.copyWith(
                        hintText: ("Username"),
                        fillColor: whiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Card(
                    child: TextField(
                      decoration: authdecoration.copyWith(
                        hintText: ("Email"),
                        fillColor: whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            30.verticalSpace,
            CustomButtons1(
              height: 42,
              width: 297,
              linearGradient: LinearGradient(colors: [darkpink, primaryColor]),

              child: Text("Update", style: style16.copyWith(color: whiteColor)),
            ),
          ],
        ),
      ),
    );
  }
}
