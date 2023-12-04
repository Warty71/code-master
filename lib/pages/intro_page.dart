import 'package:code_master/components/intro_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_constants.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.introBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // * App Name & Language Selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CODE MASTER",
                    style: GoogleFonts.roadRage(
                      color: AppConstants.textColor,
                      fontSize: 34,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (context.locale == const Locale("en", "EN")) {
                        context.setLocale(
                          const Locale("bs", "BS"),
                        );
                      } else if (context.locale == const Locale("bs", "BS"))
                        // ignore: curly_braces_in_flow_control_structures
                        context.setLocale(
                          const Locale("en", "EN"),
                        );
                    },
                    icon: const Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              // * SizedBox
              const SizedBox(
                height: 20,
              ),

              // * Icon
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset(
                  "assets/images/mad_max.png",
                ),
              ),

              // * Title
              Text(
                context.tr("introTitle"),
                style: GoogleFonts.roadRage(
                  color: AppConstants.textColor,
                  fontSize: 58,
                ),
              ),

              // * SizedBox
              const SizedBox(
                height: 20,
              ),

              // * Subtitle
              Text(
                context.tr("introSubtitle"),
                style: GoogleFonts.roadRage(
                  color: AppConstants.textColor,
                  fontSize: 34,
                ),
              ),

              // * SizedBox
              const SizedBox(
                height: 20,
              ),

              // * Button - Continue
              IntroButton(
                text: context.tr("introButton"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
