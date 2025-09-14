import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_auth_appbar.dart';

import 'widgets/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  static const String id = 'resetPasswordView';
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppbar(context, 'كلمة مرور جديدة'),
      body: ResetPasswordViewBody(),
    );
  }
}
