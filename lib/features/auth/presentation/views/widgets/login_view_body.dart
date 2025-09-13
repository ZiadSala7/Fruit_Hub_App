import 'package:flutter/material.dart';
import 'package:tharwat_e_commerce/core/widgets/custom_button.dart';

import '../../../../../core/widgets/custom_text_button.dart';
import 'login_text_form_field_section.dart';
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
          LoginTextFormFieldSection(),
          CustomTextButton(
            anlignment: Alignment.bottomLeft,
            onPressed: () {},
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
