import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_auth_appbar.dart';
import 'widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  static const String id = 'ForgetPasswordView';
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppbar(context, 'نسيان كلمة المرور'),
      body: ForgetPasswordViewBody(),
    );
  }
}
