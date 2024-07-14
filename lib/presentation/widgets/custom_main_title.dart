import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_text_styles.dart';

class CustomMainTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomMainTitle({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyles().headline1,
        ),
        SizedBox(height: 18.h),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: AppTextStyles().paragraph,
        ),
      ],
    );
  }
}
