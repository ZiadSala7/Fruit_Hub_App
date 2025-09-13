import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Divider(indent: 16)),
        Text("أو", style: TextStyles.semiBold16),
        Expanded(child: Divider(endIndent: 16)),
      ],
    );
  }
}
