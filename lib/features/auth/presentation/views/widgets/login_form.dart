import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/login/login_cubit.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_password_text_form_field.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../forget_password_view.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    late String email, password;
    return Form(
      key: formKey,
      child: Column(
        spacing: 16,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomTextFormField(
              hintTxt: 'البريد الالكتروني :',
              onSaved: (emaill) {
                setState(() {
                  email = emaill!;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomPasswordTextFormField(
              hintTxt: 'كلمة المرور :',
              onSaved: (pass) {
                setState(() {
                  password = pass!;
                });
              },
            ),
          ),
          CustomTextButton(
            anlignment: Alignment.bottomLeft,
            onPressed: () {
              Navigator.of(context).pushNamed(ForgetPasswordView.id);
            },
            title: 'نسيت كلمة المرور؟',
          ),
          CustomButton(
            title: 'تسجيل دخول',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                cubit.loginWithEmailAndPassword(
                  email: email,
                  password: password,
                );
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
