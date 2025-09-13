import 'package:flutter/material.dart';

import 'login_navigation_button.dart';
import 'sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        children: [
          SizedBox(),
          SignUpForm(),
          SizedBox(),
          LoginNavigationButton(),
        ],
      ),
    );
  }
}
