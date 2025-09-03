import 'package:flutter/material.dart';

import '../../../data/onboarding_view_model.dart';
import 'custom_dot_indicator.dart';

class DotsIndicatorRow extends StatelessWidget {
  const DotsIndicatorRow({super.key, required this.model});

  final OnboardingViewModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [
        CustomDotIndicator(isActive: true),
        CustomDotIndicator(isActive: model.isLast ? true : false),
      ],
    );
  }
}
