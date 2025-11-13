import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/dummy_photos.dart';

class PhotosSection extends StatelessWidget {
  const PhotosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.w,
      runSpacing: 10.h,
      children: photos.map((img) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: Image.asset(
            img,
            width: 100.w,
            height: 90.h,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
    );
  }
}
