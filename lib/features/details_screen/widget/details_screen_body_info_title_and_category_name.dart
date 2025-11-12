import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreenBodyInfoTitleAndCategoryName extends StatelessWidget {
  const DetailsScreenBodyInfoTitleAndCategoryName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 17.h),
        Text(
          'معبد الكرنك في الاقصر',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontFamily: 'Norsal',
          ),
        ),
        Text(
          'المواقع التاريخيه والاثار القديمه',
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontFamily: 'Norsal',
          ),
        ),
      ],
    );
  }
}
