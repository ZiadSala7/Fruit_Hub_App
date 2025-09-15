import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:tharwat_e_commerce/features/auth/presentation/views/login_view.dart';

import '../../../../../core/widgets/show_awesome_dialog.dart';
import '../../cubit/register/register_cubit.dart';
import 'sign_up_view_body.dart';

class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterStates>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          showAwesomeDialog(
            context,
            'تمت المهمة بنجاح',
            'لقد أنشأت للتو حسابا جديدا',
            true,
            () {
              Navigator.of(context).pushNamed(LoginView.id);
            },
          );
        } else if (state is RegisterFailure) {
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
          inAsyncCall: state is RegisterLoading ? true : false,
          child: SignUpViewBody(),
        );
      },
    );
  }
}
