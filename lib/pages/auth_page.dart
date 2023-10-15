// ignore_for_file: avoid_print

import 'package:code_master/pages/home_page.dart';
import 'package:code_master/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/auth_bloc.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.user != null) {
          return const HomePage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
