import 'package:flutter/material.dart';

class FillerPage extends StatelessWidget {
  const FillerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: const Center(
        child: Text("Filler Page"),
      ),
    );
  }
}
