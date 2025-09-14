import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../constants.dart';

Widget buildPinPut() {
  return Pinput(
    defaultPinTheme: defaultPinTheme,
    focusedPinTheme: focusedPinTheme,
    submittedPinTheme: submittedPinTheme,
    onSubmitted: (value) {},
    validator: (s) {
      return s == '2222' ? null : 'Pin is incorrect';
    },
    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
    showCursor: true,
    onCompleted: (pin) => log(pin),
  );
}
