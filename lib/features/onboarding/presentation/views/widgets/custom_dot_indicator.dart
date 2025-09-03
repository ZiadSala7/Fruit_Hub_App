import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart' show AppColors;

class CustomDotIndicator extends StatelessWidget {
  final bool isActive;
  const CustomDotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isActive
            ? AppColors.primaryColor
            : AppColors.notActiveDotIndicatorColor,
      ),
      height: isActive ? 11 : 9,
      width: isActive ? 11 : 9,
    );
  }
}
