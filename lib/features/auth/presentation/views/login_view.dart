import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/login/login_cubit.dart';

import '../../../../core/services/get_it_service.dart';
import '../../../../core/widgets/custom_auth_appbar.dart';
import '../../data/repos/auth_repo_implement.dart';
import 'widgets/login_view_body_bloc_consumer.dart';

class LoginView extends StatelessWidget {
  static const String id = 'LoginView';
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(repo: getIt<AuthRepoImplement>()),
      child: Scaffold(
        appBar: customAuthAppbar(context, 'تسجيل الدخول'),
        body: LoginViewBodyBlocConsumer(),
      ),
    );
  }
}
