// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:code_master/bloc/user_bloc/user_event.dart';
import 'package:code_master/bloc/user_bloc/user_state.dart';
import 'package:code_master/handlers/firebase_handlers/database_handlers.dart';
import 'package:code_master/models/users_model.dart';
import 'package:code_master/managers/snackbar_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../handlers/firebase_handlers/auth_handlers.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final AuthHandler authHandler = AuthHandler();
  final DatabaseHandler databaseHandler = DatabaseHandler();

  UserBloc() : super(UserState()) {
    on<UserEvent>((event, emit) async {
      UserCredential? userCredential;
      User? user;
      UserData? userData;

      try {
        switch (event) {
          case UserEvent.google:
            emit(state.copyWith(isLoading: true, authMethod: "Google"));

            userCredential = await authHandler.signIn(
              AuthType.google,
            );

            user = userCredential?.user;

            if (user != null) {
              // * If Auth == Success, check if user exists in DB
              userData = await databaseHandler.getUserData(user.uid);
              // * If user does not exist, create a new database entry
              if (userData == null) {
                // * Create a new user entry in the database
                await databaseHandler.saveUserData(user);
                userData = await databaseHandler.getUserData(user.uid);
              }
            }

            SnackbarManager().showSnackbar("Welcome, ${user?.email}!");
            break;

          case UserEvent.signOut:
            await authHandler.signOut();
            user = null;
            userData = null;
            break;

          case UserEvent.delete:
            await authHandler.deleteUser();
            user = null;
            userData = null;
            break;

          default:
            user = null;
        }
      } catch (e) {
        print(e);
      } finally {
        emit(state.copyWith(
          user: user,
          userData: userData,
          isLoading: false,
          authMethod: "",
        ));
      }
    });
  }
}
