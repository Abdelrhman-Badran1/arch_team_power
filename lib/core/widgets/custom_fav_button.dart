import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFavButton extends StatefulWidget {
  const CustomFavButton({super.key});

  @override
  State<CustomFavButton> createState() => _CustomFavButtonState();
}

class _CustomFavButtonState extends State<CustomFavButton> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: Container(
        height: 28.h,
        width: 28.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
          child: Icon(
            isActive ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
            color: const Color(0xffD2B48C),
            size: 17.sp,
          ),
        ),
      ),
    );
  }
}
