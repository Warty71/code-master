import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bloc/auth_bloc.dart';
import '../components/user_tile.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * Title
                Text(
                  "My Profile",
                  style: GoogleFonts.roadRage(
                    fontSize: 40,
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                // * Main Info
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          // * Avatar
                          const CircleAvatar(
                            minRadius: 70,
                            child: Text("Image"),
                          ),

                          // * Name and Surname
                          Text(
                            "Meris Lihić",
                            style: GoogleFonts.roadRage(
                              fontSize: 34,
                              letterSpacing: 0.45,
                            ),
                          ),

                          // * Title
                          Text(
                            "Flutter Engineer",
                            style: GoogleFonts.roadRage(
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                // * More Info
                Text(
                  "Account & Settings",
                  style: GoogleFonts.roadRage(
                    fontSize: 28,
                  ),
                ),

                // * Additional Settings
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),

                // * ListView
                UserTile(
                  title: "User Details",
                  icon: const Icon(Icons.person, size: 28),
                  onTap: () {
                    context.push("/cv");
                  },
                ),
                UserTile(
                  title: "Sign Out",
                  icon: const Icon(Icons.logout, size: 28),
                  onTap: () {
                    BlocProvider.of<AuthBloc>(context).add(AuthEvent.signOut);
                  },
                ),
                UserTile(
                  title: "Delete Account",
                  icon: const Icon(Icons.delete, size: 28),
                  onTap: () {
                    BlocProvider.of<AuthBloc>(context).add(AuthEvent.delete);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
