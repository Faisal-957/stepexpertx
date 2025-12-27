import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stepexpertx/core/constant/colors.dart';
import 'package:stepexpertx/core/constant/string.dart';
import 'package:stepexpertx/core/constant/text_style.dart';
import 'package:stepexpertx/ui/views/screens/workout_screen/details_vedio_page.dart';
import 'package:stepexpertx/ui/views/screens/workout_screen/workout_viewmodel.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkoutViewModel(),
      child: Consumer<WorkoutViewModel>(
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello!",
                          style: style12.copyWith(color: Colors.pinkAccent),
                        ),
                        Row(
                          children: [
                            Image.asset("$iconsAssets/arrowback.png", scale: 3),
                            10.horizontalSpace,
                            Text(
                              "Find A Cahallenge",
                              style: style24.copyWith(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Spacer(),
                            Image.asset(
                              "$iconsAssets/searchicon.png",
                              scale: 3,
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        Text(
                          "Workout Videos",
                          style: style24.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: videoList.length,
                          itemBuilder: (context, index) {
                            final video = videoList[index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailVideoPage(
                                      videoUrl: video.videoUrl,
                                    ),
                                  ),
                                );
                              },
                              child: Card(
                                color: whiteColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                shadowColor: greyColor,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 20,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(4),
                                        child: Image.asset(video.thumbnail),
                                      ),
                                      SizedBox(height: 7),
                                      Row(
                                        children: [
                                          Icon(Icons.watch_later_outlined),
                                          Text(
                                            "   ${video.duration}  |  ${video.category}",
                                            style: style12.copyWith(
                                              color: greyColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),

                                      Text(
                                        video.title,
                                        style: style16.copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(video.description, style: style16),
                                      SizedBox(height: 15),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
