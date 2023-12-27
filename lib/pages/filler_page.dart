import 'package:code_master/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FillerPage extends StatelessWidget {
  const FillerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Text(
          "FillerPage",
          style: GoogleFonts.roadRage(color: Colors.black, fontSize: 40),
        ),
      ),
    );
  }
}
