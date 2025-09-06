import 'package:flutter/material.dart';
import 'package:tharwat_e_commerce/constants.dart';

import 'core/helper_functions/get_localization_delegates.dart';
import 'core/helper_functions/on_generate_routes.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'generated/l10n.dart';

class FruitHubApp extends StatelessWidget {
  const FruitHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.id,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('ar'),
    );
  }
}
