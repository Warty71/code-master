// ignore_for_file: avoid_print
import 'package:code_master/services/firebase_services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum SignInType { manual, google, apple, linkedin }

class AuthHandler {
  final authService = FirebaseAuthServices();

  Future<UserCredential> signIn(SignInType type) async {
    try {
      switch (type) {
        case SignInType.google:
          return authService.signInWithGoogle();
        default:
          return authService.signInWithGoogle();
      }
    } on FirebaseException catch (e) {
      print(e);
      rethrow;
    }
  }
}
