import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/string.dart';
import 'package:stepexpertx/core/constant/text_style.dart';

class LogoutBottomSheet {
  // Show Bottom Sheet
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(30),
          height: 300,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),

          width: double.infinity,
          child: Column(
            children: [
              Text("Logout", style: style24),
              20.verticalSpace,
              Image.asset("$staticAssets/logoutline.png"),
              20.verticalSpace,
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Are you sure you to logout from  \nthe app",
                  style: style16.copyWith(color: blackColor),
                ),
              ),
              SizedBox(height: 20),

              // Logout Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () => Navigator.pop(context),

                    style: FilledButton.styleFrom(
                      backgroundColor: Color(0xffE6EBF2),
                      minimumSize: Size(149, 39),
                    ),
                    child: Text(
                      "Cancle",
                      style: style16.copyWith(color: blackColor),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: primaryColor),
                      minimumSize: Size(149, 39),
                    ),

                    onPressed: () {
                      Navigator.pop(context); // Close bottom sheet
                      _showPopup(context); // Show popup
                    },
                    child: Text(
                      "Yes, Logout",
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // Popup Function
  static void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: Text("You have logged out."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }
}
