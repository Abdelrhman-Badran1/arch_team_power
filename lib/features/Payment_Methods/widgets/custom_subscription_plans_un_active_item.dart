import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSubscriptionPlansUnActiveItem extends StatelessWidget {
  const CustomSubscriptionPlansUnActiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: 78.h,
      width: 78.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.r),
        border: Border.all(color: AppColors.primary),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.h),
          Text(
            '12\nشهر',
            textAlign: TextAlign.center,
            style: AppTextStyles.syleNorsalSemiBold13(
              context,
            ).copyWith(color: AppColors.primary),
          ),
          SizedBox(height: 3.h),
          Text(
            '199.99 ريال',
            style: AppTextStyles.syleNorsalSemiBold13(
              context,
            ).copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
