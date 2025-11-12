import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FamousPlacesList extends StatelessWidget {
  const FamousPlacesList({super.key});

  @override
  Widget build(BuildContext context) {
    final places = [
      {'image': 'assets/image/noqosh.png', 'title': 'النقوش'},
      {'image': 'assets/image/asar.png', 'title': 'الاثار'},
      {'image': 'assets/image/musuem.png', 'title': 'المعابد'},
      {'image': 'assets/image/saleh.png', 'title': 'مدائن صالح'},
    ];

    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                  style: GoogleFonts.tajawal(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
