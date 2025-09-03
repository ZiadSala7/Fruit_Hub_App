import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/onboarding_view_model.dart';

class OnboardingStack extends StatelessWidget {
  const OnboardingStack({super.key, required this.model});

  final OnboardingViewModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(model.backgroundImage, fit: BoxFit.fill),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(model.image),
          ),
          model.isLast
              ? SizedBox()
              : Positioned(
                  top: 50,
                  right: 20,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'تخط',
                      style: TextStyles.regular13.copyWith(
                        fontFamily: fontFamily,
                        color: AppColors.grayColor,
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
