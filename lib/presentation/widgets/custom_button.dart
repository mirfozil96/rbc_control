import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final String text;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed, 
    this.backgroundColor, 
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backgroundColor ?? const Color(0xffFD6B22),
      minWidth: double.infinity,
      height: 56.h,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Center(
        child: Text(
          text,
          // style: const AppTextStyle().displayMedium?.copyWith(
          //       fontFamily: "Signika",
          //       fontWeight: FontWeight.w600,
          //       fontSize: 25.h,
          //     ),
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}