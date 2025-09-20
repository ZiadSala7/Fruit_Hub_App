import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'core/utils/app_colors.dart';
import 'core/utils/app_text_styles.dart';

const String fontFamily = 'Cairo';
final PageController onboardingPageViewController = PageController(
  initialPage: 0,
);
int onboardingPageIndex = 0;

final defaultPinTheme = PinTheme(
  width: 70,
  height: 60,
  textStyle: TextStyles.bold19.copyWith(
    fontSize: 20,
    color: Color.fromRGBO(30, 60, 87, 1),
  ),
  decoration: BoxDecoration(
    border: Border.all(color: AppColors.grayColor, width: 1),
    borderRadius: BorderRadius.circular(5),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Color(0xffF4A91F)),
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Color.fromRGBO(234, 239, 243, 1),
  ),
);

List<String> get googleUserScopeHints {
  return [
    'email',
    'https://www.googleapis.com/auth/userinfo.profile',
    'https://www.googleapis.com/auth/drive.readonly',
    'https://www.googleapis.com/auth/calendar',
  ];
}

const String serverClientId =
    "626391545557-kap9sok5n82s2btgl2em3pujj75o7897.apps.googleusercontent.com";
