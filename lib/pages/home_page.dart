import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/drc_app_tile.dart';
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
            AppConstants.appTitleCapsAbb,
            style: GoogleFonts.roadRage(
              fontSize: 32,
              letterSpacing: 2,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // * Latest Release
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppConstants.introBackgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Latest Release",
                            style: GoogleFonts.roadRage(
                              fontSize: 30,
                              letterSpacing: 2,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "'Ilumska Vaktija'",
                            style: GoogleFonts.roadRage(
                              fontSize: 30,
                              letterSpacing: 2,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/app_logos/ilum.jpg",
                        height: 50,
                      ),
                    ],
                  ),
                ),

                // * SizedBox
                const SizedBox(
                  height: 25,
                ),

                // * Search Bar
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                // * SizedBox
                const SizedBox(height: 25),

                // * App Menu
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "App Menu",
                    style: GoogleFonts.roadRage(
                      color: Colors.black,
                      fontSize: 34,
                    ),
                  ),
                ),

                // * SizedBox
                const SizedBox(height: 25),

                // * Catalogue
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: AppConstants.appList.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: DRCAppTile(
                        app: AppConstants.appList[index],
                        onTap: () => context.push("/details",
                            extra: AppConstants.appList[index]),
                      ),
                    ),
                  ),
                ),

                // * SizedBox
                const SizedBox(height: 25),

                // * Spare Part
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/app_logos/iman.jpg",
                        height: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          // * Name
                          Text(
                            "IMAN",
                            style: GoogleFonts.roadRage(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),

                          // * Client
                          Text(
                            "Adnan Muratovic",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roadRage(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
