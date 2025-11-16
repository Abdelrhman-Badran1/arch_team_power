import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationScreenItemDetails extends StatelessWidget {
  const InformationScreenItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 8.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'حجر رشيد ',
                  style: AppTextStyles.syleNorsalMedium14(
                    context,
                  ).copyWith(color: Color(0xFFD2B48C)),
                ),
                SizedBox(height: 4.h),
                Expanded(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    'حجررشيد هو نصب منحجر الجرانودايوريت مع مرسوم صدر فى ممفيس،مصر، فى 196 قبل الميلاد نيابة عن الملك بطليموس الخامس، يظهر المرسوم فى ثلاثة نصوص    ',
                    style: AppTextStyles.syleNorsalRegular12(
                      context,
                    ).copyWith(color: Color(0xFF8A8A8A)),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.asset(
              AppAssets.kRashedStone,
              fit: BoxFit.fill,
              width: 93.w,
              height: 72.h,
            ),
          ),
        ],
      ),
    );
  }
}
