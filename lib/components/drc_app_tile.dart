import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/app_model.dart';

class DRCAppTile extends StatelessWidget {
  final App app;
  final void Function()? onTap;
  const DRCAppTile({
    super.key,
    required this.app,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              // * Image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  app.imagePath,
                  height: 100,
                ),
              ),

              // * Name
              Text(
                app.name,
                textAlign: TextAlign.center,
                softWrap: true,
                style: GoogleFonts.roadRage(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),

              // * Client
              Text(
                app.client,
                textAlign: TextAlign.center,
                style: GoogleFonts.roadRage(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
