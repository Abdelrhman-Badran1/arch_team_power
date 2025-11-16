import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        /// ===== مربع البحث =====
        Expanded(
          flex: 6,
          child: Container(
            width: 240.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(30.r),
              border: Border.all(color: Colors.white, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.05),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.white, size: 24.sp),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "ابحث عن أماكن ومواقع أثرية...",
                        hintStyle: GoogleFonts.tajawal(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.transparent,
                        ),
                        border: InputBorder.none,
                      ),
                      textAlign: TextAlign.right,
                      style: AppTextStyles.syleNorsalMedium14(context)
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 12.w),

        /// ===== زر الفلتر (الإعدادات) =====
        Expanded(
          flex: 0,
          child: Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
              color: const Color(0xFFD4B48C), // لون ذهبي فاتح
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Center(
              child: SvgPicture.asset(
                AppIcons.kFilterIcon, // أيقونة SVG الخاصة بالفلتر
                width: 22.w,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
