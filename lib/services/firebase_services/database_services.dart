import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../models/users_model.dart';

class FirebaseDatabaseServices {
  // Method used to save the user data to the Realtime-Database
  Future saveUserData(User user) async {
    // Access the user's ID
    final FirebaseFirestore dbRef = FirebaseFirestore.instance;

    final newUser = UserData.fromJson({
      'uid': user.uid,
      'userName': user.displayName,
      'email': user.email,
      'lastLogin': DateTime.now().toIso8601String(),
    });

    await dbRef.collection('users').doc(user.uid).set(newUser.toJson());
  }

  Future<UserData?> getUserData(String uid) async {
    final FirebaseFirestore dbRef = FirebaseFirestore.instance;

    QuerySnapshot querySnapshot =
        await dbRef.collection('users').where("uid", isEqualTo: uid).get();

    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot document = querySnapshot.docs.first;
      Map<String, dynamic> data = document.data() as Map<String, dynamic>;
      UserData userData = UserData.fromJson(data);
      return userData;
    }

    return null;
  }
}
