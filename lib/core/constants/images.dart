import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@immutable
sealed class AppImages {

  const AppImages._();

  ///SVG
  static final SvgPicture onboarding2 = SvgPicture.asset(
    "assets/images/onboarding_2.svg",
    height: 159.h,
    width: 275.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture onboarding3 = SvgPicture.asset(
    "assets/images/onboarding_3.svg",
    height: 249.h,
    width: 260.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture onboarding3Top = SvgPicture.asset(
    "assets/images/onboarding_3_top.svg",
    height: 36.h,
    width: 36.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture onboarding3Right = SvgPicture.asset(
    "assets/images/onboarding_3_right.svg",
    height: 38.18.h,
    width: 38.73.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture onboarding1TopRight = SvgPicture.asset(
    "assets/images/onboarding_1_top_right_icon.svg",
    height: 48.87.h,
    width: 46.99.w,
    fit: BoxFit.cover,
  );


  ///PNG
  static final Image onboarding1 = Image.asset(
    "assets/images/onboarding_1.png",
    height: 232.h,
    width: 388.w,
    fit: BoxFit.cover,
  );

  static final Image onboarding2TopLeft = Image.asset(
    "assets/images/onboarding_2_top_left.png",
    height: 18.h,
    width: 18.w,
    fit: BoxFit.cover,
  );

  static final Image onboarding2CenterRight = Image.asset(
    "assets/images/onboarding_2_top_right.png",
    height: 62.h,
    width: 62.w,
    fit: BoxFit.cover,
  );

  static final Image onboarding2Bottom = Image.asset(
    "assets/images/onboarding_2_bottom.png",
    height: 44.h,
    width: 54.w,
    fit: BoxFit.cover,
  );

  static final Image onboarding3Bottom = Image.asset(
    "assets/images/onboarding_3_bottom.png",
    height: 18.h,
    width: 18.w,
    fit: BoxFit.cover,
  );
}