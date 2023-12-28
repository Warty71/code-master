import 'package:code_master/widgets/components/login_tile.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bloc/user_bloc.dart';

Color primaryColor = Colors.blueGrey.shade100;
Color secondaryColor = const Color.fromARGB(255, 65, 44, 118);
Color tertiaryColor = const Color.fromARGB(255, 195, 84, 65);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "Code Master",
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
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: secondaryColor,
                      ),
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
                        BlocBuilder<UserBloc, UserState>(
                            builder: (context, state) {
                          return LoginTile(
                            imagePath: "assets/images/google.png",
                            method: "Google",
                            onPressed: () {
                              BlocProvider.of<UserBloc>(context)
                                  .add(UserEvent.google);
                            },
                          );
                        }),
                        LoginTile(
                          imagePath: "assets/images/apple_outlined.png",
                          method: "Apple",
                          onPressed: () {
                            BlocProvider.of<UserBloc>(context)
                                .add(UserEvent.apple);
                          },
                        ),
                        LoginTile(
                          imagePath: "assets/images/facebook.png",
                          method: "Facebook",
                          onPressed: () {
                            BlocProvider.of<UserBloc>(context)
                                .add(UserEvent.facebook);
                          },
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
