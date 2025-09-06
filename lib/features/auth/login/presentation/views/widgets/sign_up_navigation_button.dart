import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_text_button.dart';
import '../../../../sign_up/presentation/views/sign_up_view.dart';

class SignUpNavigationButton extends StatelessWidget {
  const SignUpNavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تمتلك حساب ؟',
          style: TextStyles.semiBold16.copyWith(color: AppColors.grayColor),
        ),
        CustomTextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(SignUpView.id);
          },
          title: 'قم بإنشاء حساب',
        ),
      ],
    );
  }
}
