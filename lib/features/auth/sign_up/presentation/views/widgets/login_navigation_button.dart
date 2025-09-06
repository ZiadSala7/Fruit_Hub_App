import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_text_button.dart';
import '../../../../login/presentation/views/login_view.dart';

class LoginNavigationButton extends StatelessWidget {
  const LoginNavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'تمتلك حساب بالفعل ؟',
          style: TextStyles.semiBold16.copyWith(color: AppColors.grayColor),
        ),
        CustomTextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(LoginView.id);
          },
          title: 'تسجيل دخول',
        ),
      ],
    );
  }
}
