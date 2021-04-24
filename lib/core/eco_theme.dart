import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class EcoTheme {
  static final Color lightGreen = Color(0xFFAEEA00);
  static final Color darkGreen = Color(0xFF80AC00);

  static final Color lightBlue = Color(0xFF0BCECE);
  static final Color darkBlue = Color(0xFF0B9B9B);

  static final Color gray = Color(0xFF9F9A9A);
  static final Color black = Color(0xFF000000);

  static final Color textColor = Color(0xFFEDEDED);
  static final Color border = Color(0xFFD4D4D4);
  static final Color white = Color(0xFFFFFFFF);

  static final linearGradient = LinearGradient(colors: [
  Color(0xFFAEEA00),
  Color.fromRGBO(11, 206, 206, 0.7),
  ], stops: [
  0.3918,
  0.9315
  ], transform: GradientRotation(2*pi/5));

  static final linearGradient2 = LinearGradient(colors: [
  Color.fromRGBO(11, 206, 206, 0.7),
  Color(0xFFAEEA00),
  ], stops: [
  0.3918,
  0.9315
  ], transform: GradientRotation(2*pi/5));

}
