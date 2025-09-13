import 'package:flutter/material.dart';

import '../helper_functions/text_field_build_border.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  final String hintTxt;
  final void Function(String?)? onSaved;
  const CustomPasswordTextFormField({
    super.key,
    required this.hintTxt,
    this.onSaved,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: widget.onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "هذا الجقل مطلوب";
        }
        return null;
      },
      obscureText: !isVisible,
      decoration: InputDecoration(
        fillColor: AppColors.filledGrey,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          icon: Icon(
            isVisible ? Icons.visibility : Icons.visibility_off,
            color: isVisible ? AppColors.lightPrimaryColor : null,
          ),
        ),
        hintText: widget.hintTxt,

        hintStyle: TextStyles.bold16.copyWith(color: AppColors.grayColor),
        enabledBorder: textFieldBuildBorder(),
        focusedBorder: textFieldBuildBorder(),
      ),
    );
  }
}
