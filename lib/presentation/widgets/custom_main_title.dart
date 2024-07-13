import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
            height: 1.3,
            letterSpacing: -1.6,
            color: Color(0xFF1B1D21),
          ),
        ),
        SizedBox(height: 18.h),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            height: 1.6,
            letterSpacing: -0.4,
            color: Color(0x80000000),
          ),
        ),
      ],
    );
  }
}
