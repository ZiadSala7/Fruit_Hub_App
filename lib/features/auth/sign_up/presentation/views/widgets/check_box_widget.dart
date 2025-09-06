import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      icon: isChecked
          ? Icon(Icons.check_box, color: AppColors.lightPrimaryColor)
          : Icon(Icons.check_box_outline_blank),
    );
  }
}
