import 'package:flutter/material.dart';

import '../../../data/onboarding_view_model.dart';
import 'onboarding_view_body.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        OnboardingViewBody(model: onboardingModels[0]),
        OnboardingViewBody(model: onboardingModels[1]),
      ],
    );
  }
}
