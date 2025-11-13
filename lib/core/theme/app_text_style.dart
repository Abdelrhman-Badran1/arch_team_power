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
    static TextStyle styleFontNorsalMedium10CGray(context) {
    return TextStyle(
      fontSize: 10.39.sp,
      fontFamily: "FontNorsal",
      color: Colors.black87,
      fontWeight: FontWeight.w400,
    );
    }
  static TextStyle styleFontNorsalMedium10kGray10(context) {
    return TextStyle(
      fontSize: 10.39.sp,
      fontFamily: "FontNorsal",
      color: Color(0xFF8A8A8A),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleFontNorsalMedium12CGray(context) {
    return TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      fontFamily: "FontNorsal",
      color: Colors.grey[700],
    );
  }
  static TextStyle styleFontNorsalMedium12CGray20(context) {
    return TextStyle(
      fontSize: 12.12.sp,
      fontFamily: "FontNorsal",
      fontWeight: FontWeight.w500,
      color: Color(0xFF282828),
    );
  }
}
