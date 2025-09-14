import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 16),
            Text(
              'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
              style: TextStyles.semiBold16.copyWith(color: AppColors.grayColor),
            ),
            SizedBox(height: 35),
            CustomTextFormField(
              hintTxt: 'أدخل رقم الهاتف',
              onSaved: (value) {},
            ),
            SizedBox(height: 35),
            CustomButton(title: 'نسيت كلمة المرور', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
