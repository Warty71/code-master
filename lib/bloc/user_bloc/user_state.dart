import 'package:code_master/models/users_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserState {
  final User? user;
  final UserData? userData;
  final bool? isLoading;
  final String? authMethod;
  UserState({
    this.user,
    this.userData,
    this.isLoading,
    this.authMethod,
  });

  UserState copyWith({
    User? user,
    UserData? userData,
    bool? isLoading,
    String? authMethod,
  }) {
    return UserState(
      user: user,
      userData: userData,
      isLoading: isLoading,
      authMethod: authMethod,
    );
  }
}
