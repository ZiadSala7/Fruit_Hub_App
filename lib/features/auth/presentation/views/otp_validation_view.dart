import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_auth_appbar.dart';
import 'widgets/otp_validation_view_body.dart';

class OtpValidationView extends StatelessWidget {
  static const String id = 'OtpValidationView';
  const OtpValidationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppbar(context, 'التحقق من الرمز'),
      body: OtpValidationViewBody(),
    );
  }
}
