import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF31A062);
  static const red = Color(0xFFFE555D);
  static const black = Color(0xFF000000);
  static const white = Color(0xFFFFFFFF);
  static const textColor = Color(0xFF4F4F4F);
  static const textgrey = Color(0xFF828282);
  static const gold2 = Color(0xFFF0C735);
  static const gold1 = Color(0xFFD98F39);
  static const silver2 = Color(0xFFCAC9C9);
  static const silver1 = Color(0xFF979797);
  static const platinum1 = Color(0xFF615EE2);
  static const platinum2 = Color(0xFFBA8DF3);

  static const LinearGradient goldGradient = LinearGradient(
      colors: [gold1, gold2],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      stops: [0.1, 0.6]);
  static const LinearGradient silverGradient = LinearGradient(
      colors: [silver1, silver2],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      stops: [0.1, 0.6]);
  static const LinearGradient platinumGradient = LinearGradient(
      colors: [platinum1, platinum2],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      stops: [0.1, 0.6]);
}
