import 'package:arch_team_power/core/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theme/app_colors.dart';

class LibraryImageWithFavorite extends StatelessWidget {
  final String image;
  final bool isFavorite;
  const LibraryImageWithFavorite({
    super.key,
    required this.image,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 0.h),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(25.r)),
            child: Container(
              height: 107.39.h,
              width: double.infinity,
              color: Colors.white,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 10.w,
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 13.r,
                backgroundColor: Colors.white,
                child: Icon(
                  isFavorite ? Icons.favorite_outline : Icons.favorite_border,
                  color: isFavorite
                      ? AppColors.primary
                      : Colors.pinkAccent.withOpacity(0.6),
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
