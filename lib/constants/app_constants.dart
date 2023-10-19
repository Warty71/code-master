import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/app_model.dart';

class AppConstants {
  // Colors
  static const Color introBackgroundColor = Color.fromARGB(255, 138, 60, 55);
  static const Color textColor = Colors.white;

  // Texts
  static const String appTitleCaps = "DART RAPID CRAFT";
  static const String appTitleCapsAbb = "DRC";

  // Fonts
  static TextStyle primaryFont = GoogleFonts.roadRage();

  // Dimensions
  static const double defaultPadding = 16.0;

  // App Data
  static final List appList = [appIman, appIlum, appSpare];

  // * IMAN
  static final appIman = App(
    name: "IMAN",
    description: "Description",
    imagePath: "assets/images/app_logos/iman.jpg",
    client: "Adnan \nMuratovic",
    releaseDateAndroid: "123",
    releaseDateIOS: "123",
  );

  // * Ilumska Vaktija
  static final appIlum = App(
    name: "Ilumska Vaktija",
    description: "Description",
    imagePath: "assets/images/app_logos/ilum.jpg",
    client: "Mehmed \nTukulic",
    releaseDateAndroid: "123",
    releaseDateIOS: "123",
  );

  // * Spare
  static final appSpare = App(
    name: "Spare Name",
    description: "Description",
    imagePath: "assets/images/app_logos/image-placeholder.png",
    client: "Elon Musk",
    releaseDateAndroid: "123",
    releaseDateIOS: "123",
  );
}
