import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/firebase_services/auth_services.dart';

class LoginButton extends StatefulWidget {
  final TextEditingController userEmailController;
  final TextEditingController userPasswordController;
  const LoginButton({
    super.key,
    required this.userEmailController,
    required this.userPasswordController,
  });
  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool isManualLoginLoading = false;
  late String userEmail;
  late String userPassword;

  @override
  void initState() {
    super.initState();
  }

  void handleManualSignIn() async {
    setState(() {
      isManualLoginLoading = true;
    });
    userEmail = widget.userEmailController.text;
    userPassword = widget.userPasswordController.text;
    await FirebaseAuthServices().manualSignIn(userEmail, userPassword);
    setState(() {
      isManualLoginLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 225,
      height: 56,
      decoration: BoxDecoration(
        border:
            Border.all(color: const Color.fromARGB(255, 65, 44, 118), width: 2),
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 195, 84, 65),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () async {
          handleManualSignIn();
        },
        child: Center(
          child: isManualLoginLoading
              ? const SpinKitDualRing(
                  size: 24,
                  color: Colors.white,
                )
              : Text(
                  context.tr("loginButton"),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
