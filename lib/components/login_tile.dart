import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginTile extends StatefulWidget {
  final String imagePath;
  final Function() onPressed;
  const LoginTile({
    super.key,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  State<LoginTile> createState() => _LoginTileState();
}

class _LoginTileState extends State<LoginTile> {
  bool isLoading = false;

  void handleServiceLogin() async {
    setState(() {
      isLoading = true;
    });
    await widget.onPressed();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          onTap: () {
            handleServiceLogin();
          },
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 65, 44, 118), width: 1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: isLoading
                ? const SpinKitDualRing(
                    size: 40,
                    color: Colors.black,
                  )
                : Image.asset(
                    widget.imagePath,
                    height: 40,
                  ),
          ),
        ),
      ),
    );
  }
}
