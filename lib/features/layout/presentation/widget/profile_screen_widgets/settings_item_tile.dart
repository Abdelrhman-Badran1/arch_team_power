import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/models/settings_item_model.dart';

class SettingsItemTile extends StatelessWidget {
  final SettingsItemModel item;

  const SettingsItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final color = item.isLogout ? Colors.red : Colors.black;

    return GestureDetector(
      onTap: () {
        if (item.onTap != null) item.onTap!();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Image.asset(
              item.iconPath,
              height: 22.h,
              width: 22.w,
              color: color,
            ),
            SizedBox(width: 15.w),


            Expanded(
              child: Text(
                item.title,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: color,
                ),
              ),
            ),
            SizedBox(width: 15.w),

            Icon(Icons.arrow_forward_ios, size: 18.sp, color: color),

          ],
        ),
      ),
    )
    // ⭐ Animation عند الظهور
        .animate()
        .fadeIn(duration: 350.ms)
        .slideX(begin: 0.20, end: 0, duration: 350.ms);
  }
}
