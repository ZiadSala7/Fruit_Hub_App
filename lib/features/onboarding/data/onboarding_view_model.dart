import 'package:flutter/widgets.dart';
import 'package:tharwat_e_commerce/constants.dart';
import 'package:tharwat_e_commerce/core/utils/app_assets.dart';
import 'package:tharwat_e_commerce/core/utils/app_colors.dart';
import 'package:tharwat_e_commerce/core/utils/app_text_styles.dart';

class OnboardingViewModel {
  final String image, backgroundImage, subTitle;
  final Widget title;
  final bool isLast;

  OnboardingViewModel({
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
    required this.isLast,
  });
}

List<OnboardingViewModel> onboardingModels = [
  OnboardingViewModel(
    image: AppImages.assetsImagesPageViewItem1Image,
    backgroundImage: AppImages.assetsImagesPageViewItem1BackgroundImage,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ' مرحبًا بك في',
          style: TextStyles.bold23.copyWith(fontFamily: fontFamily),
        ),
        Text(
          'HUB',
          style: TextStyles.bold23.copyWith(
            color: AppColors.lightSecondaryColor,
            fontFamily: fontFamily,
          ),
        ),
        Text(
          'Fruit',
          style: TextStyles.bold23.copyWith(
            color: AppColors.primaryColor,
            fontFamily: fontFamily,
          ),
        ),
      ],
    ),
    subTitle:
        'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
    isLast: false,
  ),
  OnboardingViewModel(
    image: AppImages.assetsImagesPageViewItem2Image,
    backgroundImage: AppImages.assetsImagesPageViewItem2BackgroundImage,
    title: Text(
      'ابحث وتسوق',
      style: TextStyles.bold23.copyWith(fontFamily: fontFamily),
    ),
    subTitle:
        'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
    isLast: true,
  ),
];
