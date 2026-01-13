import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // Database service implementation
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  signupUser(String email, String password, String username) async {
    try {
      await firestore.collection('users').add({
        'email': email,
        'password': password,
        'username': username,
      });
    } catch (e) {
      print("Error adding user data: $e");
    }
  }
}
