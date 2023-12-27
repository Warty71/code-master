import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/app_model.dart';

class AppConstants {
  // Colors
  static const Color introBackgroundColor = Color.fromARGB(255, 138, 60, 55);
  static const Color textColor = Colors.white;

  // Texts
  static const String appTitleCaps = "CODE MASTER";
  static const String appTitleCapsAbb = "CM";

  // Fonts
  static TextStyle primaryFont =
      GoogleFonts.roadRage(color: Colors.white, fontSize: 34, letterSpacing: 2);

  // Dimensions
  static const double defaultPadding = 16.0;

  // App Data
  static final List appList = [
    appIman,
    appIlum,
    appCodeMaster,
    appAuctionBoy,
    appSpare
  ];

  // * IMAN
  static final appIman = App(
    name: "IMAN",
    description:
        "IMAN is an app that helps you with any questions you might have about Islam. It contains a large database of questions and answers, and you can ask your personal questions as well. IMAN was also my first official Flutter Project, that actually got me into the Mobile Development.",
    imagePath: "assets/images/app_logos/iman.jpg",
    client: "Adnan Muratovic",
    releaseDateAndroid: "123",
    releaseDateIOS: "123",
  );

  // * Ilumska Vaktija
  static final appIlum = App(
    name: "Ilumska Vaktija",
    description:
        "Ilumska Vaktija is an app I developed for my friend Mehmed. It provided the users with the prayer times, compass, various adhkar, and had a lot of neat visual components. It was a great learning experience for me.",
    imagePath: "assets/images/app_logos/ilum.jpg",
    client: "Mehmed Tukulic",
    releaseDateAndroid: "123",
    releaseDateIOS: "123",
  );

  // * Code Master
  static final appCodeMaster = App(
    name: "Code Master",
    description:
        "Personal app. Contains a large template of code snippets. I always add new ones as I learn new things, and I always use it as a boilerplate for my new projects.",
    imagePath: "assets/images/app_logos/image-placeholder.png",
    client: "Meris Lihic",
    releaseDateAndroid: "123",
    releaseDateIOS: "123",
  );

  // * Auction Boy
  static final appAuctionBoy = App(
    name: "Auction Boy",
    description: "Secondhand Auction App. Currently in development.",
    imagePath: "assets/images/app_logos/auction-boy.png",
    client: "Moonlink GmbH",
    releaseDateAndroid: "123",
    releaseDateIOS: "123",
  );

  // * Spare
  static final appSpare = App(
    name: "Your App Name",
    description: "This is how your app description will look like.",
    imagePath: "assets/images/app_logos/image-placeholder.png",
    client: "Your name will be here :)",
    releaseDateAndroid: "123",
    releaseDateIOS: "123",
  );
}
