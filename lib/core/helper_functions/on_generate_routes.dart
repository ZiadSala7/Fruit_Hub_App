import 'package:flutter/material.dart';
import '../../features/auth/login/presentation/views/login_view.dart';
import '../../features/auth/sign_up/presentation/views/sign_up_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.id:
      return MaterialPageRoute(builder: (context) => SplashView());
    case LoginView.id:
      return MaterialPageRoute(builder: (context) => LoginView());
    case SignUpView.id:
      return MaterialPageRoute(builder: (context) => SignUpView());
    default:
      return MaterialPageRoute(builder: (context) => SizedBox());
  }
}
