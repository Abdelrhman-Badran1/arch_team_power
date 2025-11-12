import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWidget extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String text;
  final void Function()? onTap;

  const CustomButtonWidget({
    super.key,
    required this.onTap,
    this.textColor = const Color(0xFFFFFFFF),
    this.backgroundColor = const Color(0xFFD2B48C),
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 27.71.w,
          vertical: 12.12.h,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFFD0D0D0),
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.66),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'FontNorsal',
            color: textColor,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 15.59.sp,
          ),
        ),
      ),
    );
  }
}
