import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

import 'package:stepexpertx/core/constant/auth_decoration.dart';
import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/text_style.dart';
import 'package:stepexpertx/ui/views/custom_widgets/custom_buttons.dart';
import 'package:stepexpertx/ui/views/screens/root_screen/root_screen.dart';

// class SignupScreen extends StatelessWidget {
//   const SignupScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(right: 20, left: 20),
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: authdecoration.copyWith(hintText: "User name "),
//               ),
//               SizedBox(height: 5.h),
//               TextFormField(
//                 decoration: authdecoration.copyWith(hintText: "Email"),
//               ),
//               SizedBox(height: 5.h),
//               TextFormField(
//                 obscureText: true,
//                 decoration: authdecoration.copyWith(hintText: "Password"),
//               ),
//               SizedBox(height: 20),
//               CustomButtons1(
//                 height: 42.h,
//                 width: 297.36627197265625.w,
//                 onTap: () {
//                   Get.to(RootScreen());
//                 },
//                 linearGradient: LinearGradient(
//                   colors: [darkpink, primaryColor],
//                 ),
//                 child: Text(
//                   "SignUp",
//                   style: TextStyle(
//                     color: whiteColor,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Already have an account? ",
//                     style: style12.copyWith(color: Color(0xff909090)),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       DefaultTabController.of(context).animateTo(1);
//                     },
//                     child: Text(
//                       "login",
//                       style: style12.copyWith(color: primaryColor),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          reverse: true, // keyboard open hone par scroll automatically
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.h),
              TextFormField(
                decoration: authdecoration.copyWith(hintText: "User name"),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: authdecoration.copyWith(hintText: "Email"),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                obscureText: true,
                decoration: authdecoration.copyWith(hintText: "Password"),
              ),
              SizedBox(height: 20.h),
              CustomButtons1(
                height: 42.h,
                width: double.infinity,
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
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Already have an account? ",
                      style: style12.copyWith(
                        color: Color(0xff909090),
                        fontSize: 12.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      DefaultTabController.of(context).animateTo(1);
                    },
                    child: Text(
                      "login",
                      style: style12.copyWith(
                        color: primaryColor,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom,
              ), // extra space for keyboard
            ],
          ),
        ),
      ),
    );
  }
}
