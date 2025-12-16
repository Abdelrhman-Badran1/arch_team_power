import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FamousPlacesList extends StatelessWidget {
  const FamousPlacesList({super.key});

  @override
  Widget build(BuildContext context) {
    final places = [
      {'image': AppAssets.kNoqoshImage, 'title': 'النقوش'},
      {'image': AppAssets.kAser, 'title': 'الاثار'},
      {'image': AppAssets.kMusuemImage, 'title': 'المعابد'},
      {'image': AppAssets.kSalehimage, 'title': 'مدائن صالح'},
    ];

    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 14.w),
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: Image.asset(
                    place['image']!,
                    width: 80.w,
                    height: 80.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  place['title']!,
                  style: AppTextStyles.syleNorsalRegular10(context),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
