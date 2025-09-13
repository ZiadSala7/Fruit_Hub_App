import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_auth_appbar.dart';

import 'widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  static const String id = 'SignUpView';
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppbar(context, 'حساب جديد'),
      body: SignUpViewBody(),
    );
  }
}
