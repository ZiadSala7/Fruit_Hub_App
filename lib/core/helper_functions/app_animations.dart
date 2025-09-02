import 'package:animate_do/animate_do.dart';
import 'package:flutter/widgets.dart';

fadeInChooser(
  Duration? duration, {
  required Widget widget,
  required String fadeInType,
}) {
  switch (fadeInType) {
    case 'up':
      return FadeInUp(
        duration: duration ?? Duration(seconds: 1),
        child: widget,
      );
    case 'down':
      return FadeInDown(
        duration: duration ?? Duration(seconds: 1),
        child: widget,
      );
    case 'right':
      return FadeInRight(
        duration: duration ?? Duration(seconds: 1),
        child: widget,
      );
    case 'left':
      return FadeInLeft(
        duration: duration ?? Duration(seconds: 1),
        child: widget,
      );
    default:
      return FadeIn(duration: duration ?? Duration(seconds: 1), child: widget);
  }
}
