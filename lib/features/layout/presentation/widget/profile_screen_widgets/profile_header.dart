import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          children: [
            Text(
              "محمد عبدالله",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "سائح",
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
          ],
        ),

        Builder(
          builder: (context) => GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Icon(Icons.menu, size: 26.sp),
          ),
        ),
      ],
    );
  }
}
