import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            AppConstants.appTitleCaps,
            style: GoogleFonts.roadRage(
              fontSize: 32,
              letterSpacing: 2,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Center(
          child: Text(
            "HomePage",
            style: GoogleFonts.roadRage(
              color: Colors.black,
              fontSize: 40,
            ),
          ),
        )),
      ),
    );
  }
}
