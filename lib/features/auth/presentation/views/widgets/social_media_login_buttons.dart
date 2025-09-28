import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/login/login_cubit.dart';

import '../../../../../core/utils/app_assets.dart';
import 'social_login_button.dart';

class SocialMediaLoginButtons extends StatelessWidget {
  const SocialMediaLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<LoginCubit>(context);
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 17),
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            SocialLoginButton(
              image: AppImages.assetsImagesGoogleIcon,
              title: 'تسجيل بواسطة جوجل',
              onPressed: () async => await cubit.loginWithGoogle(),
            ),
            SocialLoginButton(
              image: AppImages.assetsImagesApplIcon,
              title: 'تسجيل بواسطة أبل',
              onPressed: () async => await cubit.loginWithApple(),
            ),
            SocialLoginButton(
              image: AppImages.assetsImagesFacebookIcon,
              title: 'تسجيل بواسطة فيسبوك',
              onPressed: () async => await cubit.loginWithFacebook(),
            ),
          ],
        ),
      ),
    );
  }
}
