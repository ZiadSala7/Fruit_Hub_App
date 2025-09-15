import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../cubit/register/register_cubit.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;
  @override
  Widget build(contextT) {
    return IconButton(
      onPressed: () {
        setState(() {
          isChecked = !isChecked;
          BlocProvider.of<RegisterCubit>(context).areTermsAccepted = isChecked;
        });
      },
      icon: isChecked
          ? Icon(Icons.check_box, color: AppColors.lightPrimaryColor)
          : Icon(Icons.check_box_outline_blank),
    );
  }
}
