import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class SignUpCheckbox extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  const SignUpCheckbox(
      {super.key, required this.isChecked, required this.onChanged});

  @override
  State<SignUpCheckbox> createState() => _SignUpCheckboxState();
}

class _SignUpCheckboxState extends State<SignUpCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          color: widget.isChecked ? AppColors.l00B533 : AppColors.lD9D9D9,
          onPressed: () {
            widget.onChanged(!widget.isChecked);
          },
          icon: widget.isChecked
              ? const Icon(Icons.check_box, color: AppColors.l00B533)
              : const Icon(Icons.check_box_outline_blank,
                  color: AppColors.lD9D9D9),
        ),
        const Text(
          "Remember Me",
          // style: const AppTextStyle().bodySmall?.copyWith(
          //       color: widget.isChecked ? AppColors.l00B533 : AppColors.lD9D9D9,
          //       fontSize: 11,
          //     ),
        ),
      ],
    );
  }
}
