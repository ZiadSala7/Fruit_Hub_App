import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/build_pinput.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class OtpValidationViewBody extends StatelessWidget {
  const OtpValidationViewBody({super.key});

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
                'أدخل الرمز الذي أرسلناه إلى عنوان بريد email',
                style: TextStyles.semiBold16.copyWith(
                  color: AppColors.grayColor,
                ),
              ),
            ),
            SizedBox(height: 35),
            buildPinPut(),
            SizedBox(height: 35),
            CustomButton(title: 'تحقق من الرمز', onPressed: () {}),
            SizedBox(height: 24),
            CustomTextButton(onPressed: () {}, title: 'إعادة إرسال الرمز'),
          ],
        ),
      ),
    );
  }
}
