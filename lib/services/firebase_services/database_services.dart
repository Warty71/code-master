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

    final newUser = Users.fromJson({
      'id': user.uid,
      'userName': user.displayName,
      'email': user.email,
      'lastLogin': DateTime.now().toIso8601String(),
    });

    if (userData == null) {
      await userRef.set(newUser.toJson());
    } else {
      await userRef.update(newUser.toJson());
    }
  }
}
