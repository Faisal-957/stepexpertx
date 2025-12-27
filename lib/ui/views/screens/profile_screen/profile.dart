import 'package:flutter/material.dart';

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

                  onTap: () {},
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
}
