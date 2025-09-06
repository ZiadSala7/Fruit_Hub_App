import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

AppBar customAuthAppbar(BuildContext context, String title) {
  return AppBar(
    centerTitle: true,
    title: Text(title, style: TextStyles.bold23),
    leading: IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Icon(Icons.arrow_back_ios),
    ),
  );
}
