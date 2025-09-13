import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_button.dart';

import 'login_navigation_button.dart';
import 'sign_up_text_form_field_section.dart';
import 'terms_and_conditions.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        children: [
          SizedBox(),
          SignUpTextFormFieldSection(),
          TermsAndConditions(),
          SizedBox(),
          CustomButton(title: 'إنشاء حساب جديد', onPressed: () {}),
          SizedBox(),
          LoginNavigationButton(),
        ],
      ),
    );
  }
}
