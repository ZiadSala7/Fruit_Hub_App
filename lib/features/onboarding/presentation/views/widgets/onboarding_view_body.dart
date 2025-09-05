import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../data/onboarding_view_model.dart';
import 'dots_indicator_row.dart';
import 'onboarding_stack.dart';

class OnboardingViewBody extends StatelessWidget {
  final OnboardingViewModel model;
  const OnboardingViewBody({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingStack(model: model),
        SizedBox(height: 47.5),
        model.title,
        SizedBox(height: 25),
        Text(
          model.subTitle,
          textAlign: TextAlign.center,
          style: TextStyles.semiBold16.copyWith(fontFamily: fontFamily),
        ),
        Spacer(),
        DotsIndicatorRow(model: model),
        SizedBox(height: 30),
        model.isLast
            ? CustomButton(title: 'ابدأ الان', onPressed: () {})
            : SizedBox(height: 51),
        SizedBox(height: 50),
      ],
    );
  }
}
