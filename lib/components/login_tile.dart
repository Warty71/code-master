import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../bloc/auth_bloc.dart';

class LoginTile extends StatelessWidget {
  final String imagePath;
  final AuthEvent method;

  const LoginTile({
    super.key,
    required this.imagePath,
    required this.method,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              onTap: () async {
                BlocProvider.of<AuthBloc>(context).add(method);
              },
              borderRadius: BorderRadius.circular(16),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 65, 44, 118), width: 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: (state.isLoading && state.loadingMethod == method)
                    ? const SpinKitDualRing(
                        size: 40,
                        color: Colors.black,
                      )
                    : Image.asset(
                        imagePath,
                        height: 40,
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
