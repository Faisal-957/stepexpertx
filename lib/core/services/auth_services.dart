import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class AuthServices {
  final auth = FirebaseAuth.instance;
  signUp(email, password) async {
    try {
      // Firebase signup
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      // ignore: avoid_print
      print("Unknown error: $e");
      Get.snackbar(
        "Signup Error",
        "Something went wrong",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
