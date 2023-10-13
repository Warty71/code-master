// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../handlers/firebase_handlers/auth_handlers.dart';

enum AuthEvent { manual, google, apple, facebook }

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
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      loadingMethod: loadingMethod ?? this.loadingMethod,
    );
  }
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthHandler authHandler = AuthHandler();

  AuthBloc()
      : super(AuthState(isLoading: false, loadingMethod: AuthEvent.manual)) {
    on<AuthEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        switch (event) {
          case AuthEvent.manual:
            emit(state.copyWith(loadingMethod: AuthEvent.manual));
          case AuthEvent.google:
            emit(state.copyWith(loadingMethod: AuthEvent.google));
            await authHandler.signIn(SignInType.google);

          case AuthEvent.apple:
            emit(state.copyWith(loadingMethod: AuthEvent.apple));
          case AuthEvent.facebook:
            emit(state.copyWith(loadingMethod: AuthEvent.facebook));

            break;
          default:
        }
      } catch (e) {
        print(e);
      } finally {
        emit(state.copyWith(isLoading: false));
      }
    });
  }
}
