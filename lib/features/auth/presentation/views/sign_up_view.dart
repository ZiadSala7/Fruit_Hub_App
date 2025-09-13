import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/get_it_service.dart';
import '../../data/repos/auth_repo_implement.dart';
import '../cubit/register/register_cubit.dart';
import '../../../../core/widgets/custom_auth_appbar.dart';

import 'widgets/sign_up_view_body_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  static const String id = 'SignUpView';
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(repo: getIt<AuthRepoImplement>()),
      child: Scaffold(
        appBar: customAuthAppbar(context, 'حساب جديد'),
        body: SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}
