import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  final AlignmentGeometry anlignment;
  final String title;
  final Function() onPressed;
  const CustomTextButton({
    super.key,
    this.anlignment = Alignment.center,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: anlignment,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyles.semiBold16.copyWith(
            color: AppColors.lightPrimaryColor,
          ),
        ),
      ),
    );
  }
}
