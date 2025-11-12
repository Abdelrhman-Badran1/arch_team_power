import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle syleNorsalMedium15(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: 'Norsal',

      fontSize: 15.sp,
    );
  }

  static TextStyle syleNorsalMedium16(context) {
    return TextStyle(
      fontFamily: 'Norsal',
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle syleNorsalRegular14(context) {
    return TextStyle(
      fontFamily: 'Norsal',
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle syleNorsalMedium17(context) {
    return TextStyle(
      fontFamily: 'Norsal',
      fontSize: 17.sp,
      fontWeight: FontWeight.w500,
    );
  }

    static TextStyle styleFontNorsalMedium13CGray(context) {
    return TextStyle(
      fontFamily: 'FontNorsal',
      fontWeight: FontWeight.w500,
      fontStyle:
      FontStyle.normal, // أو FontStyle.italic لو محتاج مائل
      fontSize: 13.86.sp,
      color: Color(0xFF8A8A8A),
    );
    }
}
