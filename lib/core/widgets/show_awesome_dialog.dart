import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';

showAwesomeDialog(
  BuildContext context,
  String title,
  String desc,
  bool isSuccess,
  Function() btnOkOnPress,
) {
  AwesomeDialog(
    context: context,
    dialogType: isSuccess ? DialogType.success : DialogType.error,
    animType: AnimType.bottomSlide,
    title: title,
    titleTextStyle: TextStyles.bold19,
    descTextStyle: TextStyles.semiBold16,
    desc: desc,
    btnOkColor: isSuccess ? Color(0xff00ca72) : Colors.red,
    btnOkOnPress: btnOkOnPress,
  ).show();
}
