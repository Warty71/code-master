import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../models/users_model.dart';

class FirebaseDatabaseServices {
  // Method used to save the user data to the Realtime-Database
  saveUser(User user) async {
    // Access the user's ID
    final DatabaseReference userRef =
        FirebaseDatabase.instance.ref().child("Users").child(user.uid);

    final DatabaseEvent event = await userRef.once();
    final DataSnapshot snapshot = event.snapshot;
    final dynamic userData = snapshot.value;

    if (userData == null) {
      // If it is the user's first login, save his data.
      final newUser = Users.fromJson({
        'id': user.uid,
        'userName': user.displayName,
        'email': user.email,
      });
      await userRef.set(newUser.toJson());
    }
  }
}
