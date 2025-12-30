import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/string.dart';
import 'package:stepexpertx/ui/views/screens/tabbar_screens/login_screen.dart';
import 'package:stepexpertx/ui/views/screens/tabbar_screens/signup_screen.dart';

class Tabbarscreen extends StatelessWidget {
  const Tabbarscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        ///
        /// Start Body
        ///
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("$staticAssets/signup.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: 256, left: 19, right: 19),
              height: 443,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ///
                    /// Top logo
                    ///
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          colors: [primaryColor, Color(0xffD02E56)],
                        ),
                      ),
                      child: Image.asset("$staticAssets/bicep.png", scale: 4),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 80, right: 80),
                      child: TabBar(
                        labelColor: primaryColor,
                        indicatorColor: primaryColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        tabs: [
                          Tab(text: "Login"),
                          Tab(text: "Signup"),
                        ],
                      ),
                    ),
                    20.verticalSpace,
                    Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(child: LoginScreen()),
                          SingleChildScrollView(child: SignupScreen()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
