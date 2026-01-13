import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:stepexpertx/core/services/db_services.dart';

class AuthServices {
  final FirebaseAuth auth = FirebaseAuth.instance;
  DatabaseService dbService = DatabaseService();

  Future<bool> signUp(String email, String password, String username) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // user successfully created
      await dbService.signupUser(email, password, username);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Get.snackbar(
          "Account Exists",
          "This email is already registered. Please login.",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        Get.snackbar(
          "Signup Error",
          e.message ?? "Something went wrong",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
      return false;
    } catch (e) {
      Get.snackbar(
        "Error",
        "Unknown error occurred",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return false;
    }
  }
}
