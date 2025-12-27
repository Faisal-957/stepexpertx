import 'package:stepexpertx/core/constant/string.dart';
import 'package:stepexpertx/core/model/view_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WorkoutViewModel extends BaseViewModel {
  // FlickManager? flickManager;
  //
  // void initializeVideo(String url) {
  //   flickManager?.dispose();
  //   flickManager = FlickManager(
  //     videoPlayerController: VideoPlayerController.networkUrl(
  //       Uri.parse("https://youtu.be/lge4QO86aSc?si=JIPSwMXm7PMCLKiQ "),
  //     ),
  //   );
  //   notifyListeners();
  // }
  //
  // @override
  // void dispose() {
  //   flickManager?.dispose();
  //   super.dispose();
  // }

  YoutubePlayerController? controller;

  void initializeYoutubeVideo(String url) {
    final videoId = YoutubePlayer.convertUrlToId(url);

    if (videoId == null) return;

    controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(autoPlay: true, mute: false),
    );

    notifyListeners();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

class VideoModel {
  final String title;
  final String thumbnail;
  final String duration;
  final String category;
  final String description;
  final String videoUrl;

  VideoModel({
    required this.title,
    required this.thumbnail,
    required this.duration,
    required this.category,
    required this.description,
    required this.videoUrl,
  });
}

final List<VideoModel> videoList = [
  VideoModel(
    title: "Design a Balanced Routine",
    thumbnail: "$staticAssets/workout1.png",
    duration: "05:30 am",
    category: "bodyweight",
    description:
        "Focus on major muscle groups (chest, back, legs, arms, and shoulders). Include compound movements like squats, deadlifts.",
    videoUrl: "https://youtu.be/8367ETnagHo?si=2W52jlDPNInROxeX",
  ),
  VideoModel(
    title: "Design a Balanced Routine",
    thumbnail: "$staticAssets/workout2.png",
    duration: "05:30 am",
    category: "bodyweight",
    description:
        "Focus on major muscle groups (chest, back, legs, arms, and shoulders). Include compound movements like squats, deadlifts.",
    videoUrl: "https://youtu.be/8367ETnagHo?si=2W52jlDPNInROxeX",
  ),
  VideoModel(
    title: "Design a Balanced Routine",
    thumbnail: "$staticAssets/workout3.png",
    duration: "05:30 am",
    category: "bodyweight",
    description:
        "Focus on major muscle groups (chest, back, legs, arms, and shoulders). Include compound movements like squats, deadlifts.",
    videoUrl: "https://youtu.be/8367ETnagHo?si=2W52jlDPNInROxeX",
  ),
  VideoModel(
    title: "Design a Balanced Routine",
    thumbnail: "$staticAssets/workout4.png",
    duration: "05:30 am",
    category: "bodyweight",
    description:
        "Focus on major muscle groups (chest, back, legs, arms, and shoulders). Include compound movements like squats, deadlifts.",
    videoUrl: "https://youtu.be/8367ETnagHo?si=2W52jlDPNInROxeX",
  ),
  VideoModel(
    title: "Design a Balanced Routine",
    thumbnail: "$staticAssets/workout5.png",
    duration: "05:30 am",
    category: "bodyweight",
    description:
        "Focus on major muscle groups (chest, back, legs, arms, and shoulders). Include compound movements like squats, deadlifts.",
    videoUrl: "https://youtu.be/8367ETnagHo?si=2W52jlDPNInROxeX",
  ),
];
