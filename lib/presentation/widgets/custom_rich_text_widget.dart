import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rbc_control/core/constants/app_colors.dart';
import 'package:rbc_control/core/constants/app_text_styles.dart';

class CustomRichText extends StatelessWidget {
  final String text;
  final double? textSize;
  final FontWeight? textFontWeight;
  final String? navigateText;
  final double? navigateTextSize;
  final FontWeight? navigateTextFontWeight;
  final void Function()? onTap;
  final EdgeInsetsGeometry? padding;

  const CustomRichText({
    super.key,
    required this.text,
    this.textSize,
    this.navigateText,
    this.navigateTextSize,
    this.onTap,
    this.textFontWeight,
    this.navigateTextFontWeight,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(vertical: 12.h),
      child: RichText(
        text: TextSpan(
          text: "$text ",
          style: AppTextStyles()
              .headline4Medium
              ?.copyWith(fontSize: textSize?.sp ?? 13.sp, color: Colors.grey),
          children: [
            TextSpan(
              text: navigateText,
              style: AppTextStyles().headline4Medium?.copyWith(
                    fontSize: navigateTextSize?.sp ?? 13.sp,
                    color: AppColors.cFD6B22,
                  ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
