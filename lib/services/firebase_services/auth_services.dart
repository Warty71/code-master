import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthServices {
  // Sign-In (Google)
  signInWithGoogle() async {
    // Begin the auth process.
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // Obtain details from the request (authentication tokens).
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // Create new credentials for the user.
    final credentials = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    // Sign the user in.
    await FirebaseAuth.instance.signInWithCredential(credentials);
  }

  // Sign-In (Manual)
  manualSignIn(
    String userEmail,
    String userPassword,
  ) async {
    final userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: userEmail.toString(),
      password: userPassword.toString(),
    );

    return userCredential;
  }

  // Sign-Up (Manual)
  Future<void> manualSignUp(
    String userEmail,
    String userPassword,
    String userConfirmPassword,
  ) async {
    // Check passwords for equality
    if (userPassword == userConfirmPassword) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: userEmail.trim(),
          password: userPassword,
        );

        // Todo: await userCredential.user?.sendEmailVerification();

        // Todo: Show a confirmation dialog.
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
    }
  }
}
