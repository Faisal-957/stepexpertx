import 'package:flutter/cupertino.dart';
import 'package:stepexpertx/ui/views/screens/homescreen.dart';
import 'package:stepexpertx/ui/views/screens/profile_screen/profile.dart';
import 'package:stepexpertx/ui/views/screens/workout_screen/workout_screen.dart';

class RootViewModel extends ChangeNotifier {
  int selectedIndex = 0;

  void onClick(index) {
    selectedIndex = index;
    notifyListeners();
  }
}

List<Widget> screens = [Homescreen(), WorkoutScreen(), Profile()];
