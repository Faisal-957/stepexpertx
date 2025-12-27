import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepexpertx/ui/views/screens/workout_screen/workout_viewmodel.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailVideoPage extends StatelessWidget {
  final String videoUrl;

  const DetailVideoPage({super.key, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WorkoutViewModel()..initializeYoutubeVideo(videoUrl),
      child: Consumer<WorkoutViewModel>(
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(title: const Text("Workout Video")),
            body: Center(
              child: model.controller != null
                  ? YoutubePlayer(
                      controller: model.controller!,
                      showVideoProgressIndicator: true,
                    )
                  : const CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
