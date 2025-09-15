import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_password_text_form_field.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/scaffold_messenger_builder.dart';
import '../../cubit/register/register_cubit.dart';
import 'terms_and_conditions.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<RegisterCubit>(context);
    late String name, password, email;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formKey,
        child: Column(
          spacing: 16,
          children: [
            CustomTextFormField(
              onSaved: (value) {
                name = value!;
              },
              hintTxt: 'الاسم كامل :',
            ),
            CustomTextFormField(
              onSaved: (value) {
                email = value!;
              },
              hintTxt: 'البريد الالكتروني :',
            ),
            CustomPasswordTextFormField(
              onSaved: (value) {
                password = value!;
              },
              hintTxt: 'كلمة المرور :',
            ),
            TermsAndConditions(),
            SizedBox(),
            CustomButton(
              title: 'إنشاء حساب جديد',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  if (cubit.areTermsAccepted) {
                    cubit.createUserWithEmailAndPassword(
                      name: name,
                      email: email,
                      password: password,
                    );
                    
                  } else {
                    scaffoldMessengerBuilder(
                      context,
                      'تأكد أن جميع البيانات مكتملة',
                    );
                  }
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
