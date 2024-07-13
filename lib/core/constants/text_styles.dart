import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rbc_control/core/constants/app_colors.dart';

@immutable
final class TextStyles{
  static const TextStyle heading = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16.0,
    color: Colors.black,
  );

  TextStyle? get headline1 => TextStyle(
      fontFamily: "DM_Sans",
      fontWeight: FontWeight.w700,
      fontSize: 36.sp,
      color: AppColors.dark,
  );

  TextStyle? get paragraph => TextStyle(
    fontFamily: "DM_Sans",
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.dark50,
  );
}