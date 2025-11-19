import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 28.r,
          backgroundImage: AssetImage(AppAssets.kProfileImage2),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "محمد عبدالله",
              style: AppTextStyles.syleNorsalRegular14(context),
            ),
            Text(
              "سائح",
              style: AppTextStyles.syleNorsalRegular10(
                context,
              ).copyWith(color: Color(0xFF8A8A8A)),
            ),
          ],
        ),

        GestureDetector(
          onTap: () => GoRouter.of(context).push(AppRouter.kSettingsScreen),
          child: Icon(Icons.menu, size: 26.sp),
        ),
      ],
    );
  }
}
