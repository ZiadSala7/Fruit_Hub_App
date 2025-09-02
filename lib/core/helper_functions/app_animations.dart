import 'package:animate_do/animate_do.dart';
import 'package:flutter/widgets.dart';

fadeInChooser({
  required Widget widget,
  Duration duration = const Duration(seconds: 1),
  required String fadeInType,
}) {
  switch (fadeInType) {
    case 'up':
      return FadeInUp(duration: duration, child: widget);
    case 'down':
      return FadeInDown(duration: duration, child: widget);
    case 'right':
      return FadeInRight(duration: duration, child: widget);
    case 'left':
      return FadeInLeft(duration: duration, child: widget);
    default:
      return FadeIn(duration: duration, child: widget);
  }
}
