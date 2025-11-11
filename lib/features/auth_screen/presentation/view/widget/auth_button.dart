import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.title,
    required this.buttonColor,
    this.onTap,
  });
  final String title;
  final Color buttonColor;
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
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Norsal',
              color: Colors.white,
              fontSize: 15.sp,
            ),
          ),
        ),
      ),
    );
  }
}
