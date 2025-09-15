import 'package:flutter/material.dart';

scaffoldMessengerBuilder(BuildContext context, String errMessage) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(errMessage)));
}
