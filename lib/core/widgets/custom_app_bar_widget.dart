import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const CustomAppBarWidget({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Text(
          title, // نصك هنا
          style: TextStyle(
            fontFamily: 'FontNorsal',
            fontWeight: FontWeight.w500,
            fontSize: 17.32.sp,
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.arrow_forward_ios_sharp,
            color: Color(0xFF282828),
            size: 22.h,
          ),
        ),
      ],
    );
  }
}
