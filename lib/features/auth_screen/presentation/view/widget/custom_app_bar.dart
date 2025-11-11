import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: Icon(
            CupertinoIcons.back,
            size: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'Norsal',
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
