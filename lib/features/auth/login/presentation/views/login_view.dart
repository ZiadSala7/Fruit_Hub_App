import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_auth_appbar.dart';
import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  static const String id = 'LoginView';
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppbar(context, 'تسجيل الدخول'),
      body: LoginViewBody(),
    );
  }
}
