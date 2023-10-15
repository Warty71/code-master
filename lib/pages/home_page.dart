import 'package:code_master/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("H O M E"),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<AuthBloc>(context).add(AuthEvent.signOut);
                      context.go("/auth");
                    },
                    child: (const Text("Log Out")),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
