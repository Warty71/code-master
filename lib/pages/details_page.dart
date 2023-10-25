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
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Project Details",
                  style: GoogleFonts.roadRage(
                    fontSize: 40,
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                // * Title
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.currentApp.name,
                    style: GoogleFonts.roadRage(fontSize: 50),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                // * Description
                Text(
                  widget.currentApp.description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roadRage(
                    fontSize: 26,
                  ),
                ),

                // * Screenshots Carousel
              ],
            ),
          ),
        ),
      ),
    );
  }
}
