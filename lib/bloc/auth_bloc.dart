// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:code_master/handlers/firebase_handlers/database_handlers.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../handlers/firebase_handlers/auth_handlers.dart';

enum AuthEvent { google, apple, facebook, signOut, delete }

class AuthState {
  final User? user;
  final bool isLoading;
  final AuthEvent loadingMethod;
  AuthState({
    this.user,
    required this.isLoading,
    required this.loadingMethod,
  });

  AuthState copyWith({
    User? user,
    bool? isLoading,
    AuthEvent? loadingMethod,
  }) {
    return AuthState(
      user: user,
      isLoading: isLoading ?? this.isLoading,
      loadingMethod: loadingMethod ?? this.loadingMethod,
    );
  }
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthHandler authHandler = AuthHandler();
  final DatabaseHandler databaseHandler = DatabaseHandler();

  AuthBloc()
      : super(AuthState(
            user: null, isLoading: false, loadingMethod: AuthEvent.signOut)) {
    on<AuthEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      UserCredential userCredential;
      User? user;
      try {
        switch (event) {
          case AuthEvent.google:
            emit(state.copyWith(loadingMethod: AuthEvent.google));
            userCredential = await authHandler.signIn(AuthType.google);
            user = userCredential.user;
            await databaseHandler.saveUserData(user!);
            break;

          case AuthEvent.signOut:
            await authHandler.signOut();
            user = null;
            break;

          case AuthEvent.delete:
            await authHandler.deleteUser();
            break;

          default:
            user = null;
        }
      } catch (e) {
        print(e);
      } finally {
        emit(state.copyWith(
            isLoading: false, loadingMethod: AuthEvent.signOut, user: user));
      }
    });
  }
}
