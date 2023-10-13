import 'package:code_master/components/login_button.dart';
import 'package:code_master/components/login_textfield.dart';
import 'package:code_master/components/login_tile.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bloc/auth_bloc.dart';

Color primaryColor = Colors.blueGrey.shade100;
Color secondaryColor = const Color.fromARGB(255, 65, 44, 118);
Color tertiaryColor = const Color.fromARGB(255, 195, 84, 65);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.speed,
                    size: 172,
                    color: tertiaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      "Dart Rapid Craft!",
                      style: GoogleFonts.openSans(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    child: Text(
                      context.tr("loginSubtitle"),
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 5,
                    ),
                    child: LoginTextfield(
                      textController: _emailController,
                      hintText: "E-mail...",
                      obscureText: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 5,
                    ),
                    child: LoginTextfield(
                      textController: _passwordController,
                      hintText: context.tr("loginPassword"),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 25,
                    ),
                    child: LoginButton(
                      userEmailController: _emailController,
                      userPasswordController: _passwordController,
                    ),
                  ),
                  Divider(
                    color: secondaryColor,
                    indent: 25,
                    endIndent: 25,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                          return const LoginTile(
                            imagePath: "assets/images/google.png",
                            method: AuthEvent.google,
                          );
                        }),
                        const LoginTile(
                          imagePath: "assets/images/apple_outlined.png",
                          method: AuthEvent.apple,
                          //onPressed: () async {},
                        ),
                        const LoginTile(
                          imagePath: "assets/images/facebook.png",
                          method: AuthEvent.facebook,
                          // onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
