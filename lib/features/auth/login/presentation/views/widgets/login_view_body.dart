import 'package:flutter/material.dart';

import 'login_text_form_field_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        children: [SizedBox(), LoginTextFormFieldSection()],
      ),
    );
  }
}
