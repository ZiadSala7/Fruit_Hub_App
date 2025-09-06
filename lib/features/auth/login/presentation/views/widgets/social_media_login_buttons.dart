import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_assets.dart';
import 'social_login_button.dart';

class SocialMediaLoginButtons extends StatelessWidget {
  const SocialMediaLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 17),
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            SocialLoginButton(
              image: AppImages.assetsImagesGoogleIcon,
              title: 'تسجيل بواسطة جوجل',
              onPressed: () {},
            ),
            SocialLoginButton(
              image: AppImages.assetsImagesApplIcon,
              title: 'تسجيل بواسطة أبل',
              onPressed: () {},
            ),
            SocialLoginButton(
              image: AppImages.assetsImagesFacebookIcon,
              title: 'تسجيل بواسطة فيسبوك',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
