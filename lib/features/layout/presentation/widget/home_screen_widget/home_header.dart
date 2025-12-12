import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'search_box.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300.h,
          width: double.infinity,
          child: Image.asset(
            AppAssets.kSearchbackGroundImage,
            fit: BoxFit.cover,
          ),
        ),

        Container(
          height: 300.h,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.6),
              ],
            ),
          ),
        ),

        /// شريط علوي (إشعارات + صورة)
        Positioned(
          top: 55.h,
          left: 20.w,
          right: 20.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 22.r,
                backgroundImage: const AssetImage(AppAssets.kProfileIamge1),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () =>
                        GoRouter.of(context).push(AppRouter.kNotesScreen),
                    child: SvgPicture.asset(
                      'assets/icons/note_edit_icon.svg',
                      color: Colors.white,
                      height: 23.h,
                      width: 23.w,
                    ),
                  ),
                  const SizedBox(width: 5),

                  GestureDetector(
                    onTap: () =>
                        GoRouter.of(context).push(AppRouter.kNotificationsPage),
                    child: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 28.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        /// مربع البحث
        Positioned(
          bottom: 25.h,
          left: 20.w,
          right: 20.w,
          child: const SearchBox()
              .animate()
              .fade(duration: 600.ms)
              .slideY(begin: 0.4, duration: 600.ms),
        ),
      ],
    ).animate().fade(duration: 800.ms).scale(duration: 800.ms);
  }
}
