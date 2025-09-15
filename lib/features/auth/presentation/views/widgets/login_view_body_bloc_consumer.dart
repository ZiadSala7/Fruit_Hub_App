import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../core/widgets/show_awesome_dialog.dart';
import 'login_view_body.dart';

import '../../cubit/login/login_cubit.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          showAwesomeDialog(
            context,
            'تمت المهمة بنجاح',
            'لقد أنشأت للتو حسابا جديدا',
            true,
            () {
              // Navigator.of(context).pushNamed(LoginView.id);
            },
          );
        } else if (state is LoginFailure) {
          showAwesomeDialog(
            context,
            "فشلت العملية",
            state.message,
            false,
            () {},
          );
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoginLoading ? true : false,
          child: LoginViewBody(),
        );
      },
    );
  }
}
