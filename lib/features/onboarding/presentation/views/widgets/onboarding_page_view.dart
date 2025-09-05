import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../data/onboarding_view_model.dart';
import 'onboarding_view_body.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  @override
  void initState() {
    onboardingPageViewController.addListener(() {
      onboardingPageViewController.page! >= 1 ? onboardingPageIndex = 1 : null;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: onboardingPageViewController,
      physics: onboardingPageIndex == 1 ? NeverScrollableScrollPhysics() : null,
      scrollDirection: Axis.horizontal,
      children: [
        OnboardingViewBody(model: onboardingModels[0]),
        OnboardingViewBody(model: onboardingModels[1]),
      ],
    );
  }
}
