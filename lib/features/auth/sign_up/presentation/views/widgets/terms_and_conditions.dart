import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import 'check_box_widget.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CheckBoxWidget(),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyles.semiBold16.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: 'الشروط والأحكام',
                  style: TextStyles.semiBold16.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                const TextSpan(text: ' ', style: TextStyles.semiBold16),
                TextSpan(
                  text: 'الخاصة',
                  style: TextStyles.semiBold16.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                const TextSpan(text: ' ', style: TextStyles.semiBold16),
                TextSpan(
                  text: 'بنا',
                  style: TextStyles.semiBold16.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
