import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_password_text_form_field.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        child: Column(
          spacing: 16,
          children: [
            CustomTextFormField(
              hintTxt: 'البريد الالكتروني :',
            ),
            CustomPasswordTextFormField(
              hintTxt: 'كلمة المرور :',
            ),
          ],
        ),
      ),
    );
  }
}
