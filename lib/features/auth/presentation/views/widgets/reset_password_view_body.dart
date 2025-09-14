import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_password_text_form_field.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 16),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول',
                style: TextStyles.semiBold16.copyWith(
                  color: AppColors.grayColor,
                ),
              ),
            ),
            SizedBox(height: 35),
            CustomPasswordTextFormField(
              hintTxt: 'أدخل كلمة مرور جديدة',
              onSaved: (value) {},
            ),
            SizedBox(height: 35),
            CustomPasswordTextFormField(
              hintTxt: 'أعد ادخال كلمة المرور ',
              onSaved: (value) {},
            ),
            SizedBox(height: 35),
            CustomButton(title: 'تحقق من الرمز', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
