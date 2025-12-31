import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSubscriptionPlansActiveItem extends StatelessWidget {
  const CustomSubscriptionPlansActiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),

      height: 100.h,
      width: 100.w,

      child: Column(
        children: [
          Container(
            height: 18.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(11.r),
                topRight: Radius.circular(11.r),
              ),
            ),
          ),
          Container(
            height: 82.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.primary),
            ),
            child: Column(
              children: [
                SizedBox(height: 5.h),
                Text(
                  '12\nشهر',
                  textAlign: TextAlign.center,

                  style: AppTextStyles.syleNorsalSemiBold13(
                    context,
                  ).copyWith(color: AppColors.primary),
                ),
                SizedBox(height: 8.h),
                Text(
                  '199.99 ريال',
                  style: AppTextStyles.syleNorsalSemiBold13(
                    context,
                  ).copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
