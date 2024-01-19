import 'package:code_master/constants/app_constants.dart';
import 'package:code_master/pages/filler_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../pages/home_page.dart';
import '../pages/user_page.dart';

class CmSnakeBar extends StatefulWidget {
  const CmSnakeBar({super.key});

  @override
  State<CmSnakeBar> createState() => _CmSnakeBarState();
}

class _CmSnakeBarState extends State<CmSnakeBar> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const FillerPage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.pinned,
        backgroundColor: AppConstants.introBackgroundColor,
        snakeViewColor: Colors.grey.shade600,
        snakeShape: SnakeShape.circle,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "Filler",
            icon: Icon(
              Icons.book,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "User",
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
