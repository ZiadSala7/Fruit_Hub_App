import 'package:flutter/material.dart';

import '../helper_functions/text_field_build_border.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintTxt;
  final TextEditingController controller;
  const CustomTextFormField({
    super.key,
    required this.hintTxt,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppColors.filledGrey,
        filled: true,
        hintText: hintTxt,
        hintStyle: TextStyles.bold16.copyWith(color: AppColors.grayColor),
        enabledBorder: textFieldBuildBorder(),
        focusedBorder: textFieldBuildBorder(isFocus: true),
      ),
    );
  }
}
