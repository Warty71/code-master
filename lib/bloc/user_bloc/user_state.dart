import 'package:code_master/models/user_model/user_model.dart';

class UserState {
  final UserModel? user;
  final bool? isLoading;
  final String? authMethod;
  UserState({
    this.user,
    this.isLoading,
    this.authMethod,
  });

  UserState copyWith({
    UserModel? user,
    bool? isLoading,
    String? authMethod,
  }) {
    return UserState(
      user: user,
      isLoading: isLoading,
      authMethod: authMethod,
    );
  }
}
