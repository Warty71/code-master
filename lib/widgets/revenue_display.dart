import 'package:code_master/constants/app_constants.dart';
import 'package:flutter/material.dart';

class RevenueDisplay extends StatelessWidget {
  const RevenueDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'EUR Revenue: 2000 EUR',
          style: AppConstants.primaryFont,
        ),
        Text(
          'BAM Revenue: 1000 BAM',
          style: AppConstants.primaryFont,
        ),
      ],
    );
  }
}
