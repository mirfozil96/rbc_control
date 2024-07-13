import 'package:flutter/material.dart';

@immutable
sealed class AppColors {
  static const Color primary = Color(0xFF0A0E21);
  static const Color accent = Color(0xFFEB1555);
  static const Color background = Color(0xFFFFFFFF);
  static const Color dark = Color(0xff1B1D21);
  static const Color dark50 = Color.fromRGBO(0, 0, 0, 0.5);

}