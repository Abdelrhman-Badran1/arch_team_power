import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.buttonColor,
    this.onTap,
    this.textColor,
  });
  final String title;
  final Color? buttonColor, textColor;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.5.h,
        width: 297.w,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.syleNorsalMedium15(
              context,
            ).copyWith(color: textColor ?? Colors.white),
          ),
        ),
      ),
    );
  }
}
