// ignore_for_file: avoid_print
import 'package:code_master/services/firebase_services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum AuthType { google, apple, linkedin, signOut }

class AuthHandler {
  final authService = FirebaseAuthServices();

  Future<UserCredential> signIn(AuthType type,
      {String? userEmail, String? userPassword}) async {
    try {
      switch (type) {
        case AuthType.google:
          return authService.signInWithGoogle();
        default:
          return authService.signInWithGoogle();
      }
    } on FirebaseException catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await authService.signOut();
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
