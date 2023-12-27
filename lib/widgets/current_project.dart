import 'package:code_master/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CurrentProject extends StatelessWidget {
  const CurrentProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppConstants.introBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          // * Project Name
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Auction Boy',
                style: AppConstants.primaryFont,
              ),
              Image.asset(
                "assets/images/app_logos/auction-boy.png",
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
