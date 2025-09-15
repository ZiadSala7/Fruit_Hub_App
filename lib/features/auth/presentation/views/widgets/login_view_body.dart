import 'package:flutter/material.dart';

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
