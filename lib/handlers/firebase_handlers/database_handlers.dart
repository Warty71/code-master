import 'package:code_master/services/firebase_services/database_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DatabaseHandler {
  final databaseService = FirebaseDatabaseServices();

  Future<void> saveUserData(User user) async {
    databaseService.saveUser(user);
  }
}
