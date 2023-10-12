import 'package:code_master/services/firebase_services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../services/firebase_services/database_services.dart';

class AuthControllers {
  googleAuthController() async {
    final UserCredential userCredential =
        await FirebaseAuthServices().signInWithGoogle();

    await FirebaseDatabaseServices().saveUser(userCredential.user!);
  }

  manualAuthController(userEmail, userPassword) async {
    final UserCredential userCredential =
        await FirebaseAuthServices().manualSignIn(userEmail, userPassword);

    await FirebaseDatabaseServices().saveUser(userCredential.user!);
  }
}
