import 'package:code_master/models/users_model.dart';
import 'package:code_master/services/firebase_services/database_services.dart';
import 'package:code_master/managers/snackbar_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DatabaseHandler {
  final databaseService = FirebaseDatabaseServices();

  Future<void> saveUserData(User user) async {
    await databaseService.saveUserData(user);
  }

  Future<UserData?> getUserData(String uid) async {
    try {
      return await databaseService.getUserData(uid);
    } catch (e) {
      SnackbarManager().showSnackbar("Error caught: $e");
      return null;
    }
  }
}
