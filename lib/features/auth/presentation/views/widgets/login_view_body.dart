import 'package:flutter/material.dart';
import 'package:tharwat_e_commerce/core/widgets/custom_button.dart';
import 'package:tharwat_e_commerce/features/auth/presentation/views/forget_password_view.dart';

import '../../../../../core/widgets/custom_text_button.dart';
import 'login_form.dart';
import 'or_divider.dart';
import 'sign_up_navigation_button.dart';
import 'social_media_login_buttons.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        children: [
          SizedBox(),
          LoginForm(),
          CustomTextButton(
            anlignment: Alignment.bottomLeft,
            onPressed: () {
              Navigator.of(context).pushNamed(ForgetPasswordView.id);
            },
            title: 'نسيت كلمة المرور؟',
          ),
          SizedBox(),
          CustomButton(title: 'تسجيل دخول', onPressed: () {}),
          SizedBox(),
          SignUpNavigationButton(),
          SizedBox(),
          OrDivider(),
          SizedBox(),
          SocialMediaLoginButtons(),
        ],
      ),
    );
  }
}
