// ignore_for_file: avoid_print

import 'package:code_master/services/firebase_services/auth_services.dart';

class FirebaseAuthHandler {
  FirebaseAuthHandler();

  Future<void> signInWithGoogle() async {
    try {
      await FirebaseAuthServices().signInWithGoogle();
    } catch (e) {
      print(e);
    }
  }

  Future<void> signInManual() async {}
}
