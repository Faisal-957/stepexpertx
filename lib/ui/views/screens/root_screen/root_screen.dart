import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/string.dart';
import 'package:stepexpertx/ui/views/screens/root_screen/root_view_model.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootViewModel(),
      child: Consumer<RootViewModel>(
        builder: (context, model, child) => Scaffold(
          body: screens[model.selectedIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(gradient: primary),
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    model.onClick(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "$iconsAssets/home.png",
                        scale: 4,
                        color: model.selectedIndex == 0
                            ? whiteColor
                            : greyColor,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: model.selectedIndex == 0
                              ? whiteColor
                              : greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    model.onClick(1);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "$iconsAssets/run.png",
                        scale: 4,
                        color: model.selectedIndex == 1
                            ? whiteColor
                            : greyColor,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Workout",
                        style: TextStyle(
                          color: model.selectedIndex == 1
                              ? whiteColor
                              : greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    model.onClick(2);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "$iconsAssets/profile.png",
                        scale: 4,
                        color: model.selectedIndex == 2
                            ? whiteColor
                            : greyColor,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: model.selectedIndex == 2
                              ? whiteColor
                              : greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
