import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

OutlineInputBorder textFieldBuildBorder({bool isFocus = false}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      width: isFocus ? 1 : 0.5,
      color: isFocus ? AppColors.lightPrimaryColor : AppColors.grayColor,
    ),
    borderRadius: BorderRadius.circular(5),
  );
}
