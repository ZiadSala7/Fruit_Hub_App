import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/helper_functions/app_animations.dart';
import '../../../../onboarding/presentation/views/onboarding_view.dart';

import '../../../../../core/utils/app_assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  int cnt = 0;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      cnt++;
      setState(() {});
      if (cnt == 4) {
        timer.cancel();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OnboardingView()),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        cnt >= 1
            ? fadeInChooser(
                Duration(seconds: 1),
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [SvgPicture.asset(AppImages.assetsImagesPlant)],
                ),
                fadeInType: 'in',
              )
            : SizedBox(),
        cnt >= 2
            ? fadeInChooser(
                Duration(seconds: 1),
                widget: SvgPicture.asset(AppImages.assetsImagesLogo),
                fadeInType: 'in',
              )
            : SizedBox(),
        cnt >= 1
            ? fadeInChooser(
                Duration(seconds: 1),
                widget: SvgPicture.asset(AppImages.assetsImagesSplashBottom),
                fadeInType: 'in',
              )
            : SizedBox(),
      ],
    );
  }
}
