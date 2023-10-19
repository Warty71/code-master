import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/app_model.dart';

class DetailsPage extends StatefulWidget {
  final App currentApp;
  const DetailsPage({super.key, required this.currentApp});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // * Back & Extra
            Row(
              children: [],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // * Image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    widget.currentApp.imagePath,
                    height: 100,
                  ),
                ),

                // * Name
                Text(
                  widget.currentApp.name,
                  style: GoogleFonts.roadRage(fontSize: 40),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
