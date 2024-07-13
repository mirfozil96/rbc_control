import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@immutable
sealed class AppImages {

  const AppImages._();

  ///SVG
  static final SvgPicture onboarding2 = SvgPicture.asset(
    "assets/images/onboarding_2.svg",
    height: 152.51.h,
    width: 259.21.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture onboarding3 = SvgPicture.asset(
    "assets/images/onboarding_3.svg",
    height: 249.h,
    width: 260.w,
    fit: BoxFit.cover,
  );


  ///PNG
  static final Image onboarding1 = Image.asset(
    "assets/images/onboarding_1.png",
    height: 232.h,
    width: 388.w,
    fit: BoxFit.cover,
  );
}