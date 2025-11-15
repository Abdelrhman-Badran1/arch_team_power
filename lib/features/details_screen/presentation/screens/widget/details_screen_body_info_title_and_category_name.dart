import 'package:arch_team_power/core/theme/app_text_style.dart';
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
          style: AppTextStyles.syleNorsalRegular20(context),
        ),
        Text(
          'المواقع التاريخيه والاثار القديمه',
          style: AppTextStyles.syleNorsalRegular14(
            context,
          ).copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
