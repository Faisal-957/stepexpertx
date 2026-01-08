import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/string.dart';
import 'package:stepexpertx/core/constant/text_style.dart';
import 'package:stepexpertx/ui/views/custom_widgets/custom_buttons.dart';
import 'package:stepexpertx/ui/views/screens/profile_screen/profile_subscreens/aboutus_screen.dart';
import 'package:stepexpertx/ui/views/screens/profile_screen/profile_subscreens/logout_screen.dart';
import 'package:stepexpertx/ui/views/screens/profile_screen/profile_subscreens/privacy_polic.dart';
import 'package:stepexpertx/ui/views/screens/profile_screen/profile_subscreens/termcondition.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 122,
                width: double.infinity,
                decoration: BoxDecoration(color: primaryColor),
              ),
              Positioned(
                top: 58,
                right: 150,

                child: CircleAvatar(
                  radius: 56,
                  backgroundColor: Colors.grey[350],

                  child: Image.asset(
                    '$iconsAssets/profile1.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Text("Alex", style: style24.copyWith(color: blackColor)),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              backgroundColor: blackColor,
              foregroundColor: Colors.white,
            ),
            child: Text('Edit profile'),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutUsScreen(),
                        ),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 16,
                        ),
                        leading: Image.asset("$iconsAssets/i.png", scale: 4),
                        title: Text("About Us"),
                        trailing: Icon(Icons.arrow_forward_ios, size: 20),
                        tileColor: whiteColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Termcondition(),
                        ),
                      );
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      leading: Image.asset("$iconsAssets/terms.png", scale: 4),
                      title: Text("Terms and Conditions"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 20),
                      tileColor: whiteColor,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PrivacyPolic()),
                      );
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      leading: Image.asset(
                        "$iconsAssets/privacy.png",
                        scale: 4,
                      ),
                      title: Text("Privacy and Policy"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 20),
                      tileColor: whiteColor,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Card(
                  child: InkWell(
                    onTap: () {
                      LogoutBottomSheet.show(context);
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      leading: Image.asset("$iconsAssets/logout.png", scale: 4),
                      title: Text("Logout"),
                      trailing: Icon(Icons.arrow_forward_ios, size: 20),
                      tileColor: whiteColor,
                    ),
                  ),
                ),

                ///
                SizedBox(height: 20),

                CustomButtons1(
                  height: 48,
                  width: 253,
                  borderRadius: 34,

                  onTap: () {
                    showMyDialog(context);
                  },
                  linearGradient: LinearGradient(
                    colors: [darkpink, primaryColor],
                  ),
                  child: Text(
                    "Cancel Subscription",
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showMyDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Text(
                    "Are you sure you want to cancel \nyour subscription",
                    style: style16,
                    textAlign: TextAlign.center,
                  ),
                  20.verticalSpace,
                  Text(
                    "You will lose access to all \napp features immediately",
                    style: style16.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  20.verticalSpace,
                  CustomButtons1(
                    onTap: () => Navigator.pop(context),
                    boxColor: whiteColor,
                    height: 42,
                    width: 346,
                    child: Text(
                      "Keep Plan",
                      style: style16.copyWith(color: primaryColor),
                    ),
                  ),
                  20.verticalSpace,
                  CustomButtons1(
                    onTap: () => Navigator.pop(context),
                    boxColor: primaryColor,
                    height: 42,
                    width: 346,
                    child: Text(
                      "Cancel Subscription",
                      style: style16.copyWith(color: whiteColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
