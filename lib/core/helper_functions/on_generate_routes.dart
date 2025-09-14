import 'package:flutter/material.dart';
import '../../features/auth/presentation/views/forget_password_view.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/otp_validation_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.id:
      return MaterialPageRoute(builder: (context) => SplashView());
    case LoginView.id:
      return MaterialPageRoute(builder: (context) => LoginView());
    case SignUpView.id:
      return MaterialPageRoute(builder: (context) => SignUpView());
    case ForgetPasswordView.id:
      return MaterialPageRoute(builder: (context) => ForgetPasswordView());
    case OtpValidationView.id:
      return MaterialPageRoute(builder: (context) => OtpValidationView());

    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
