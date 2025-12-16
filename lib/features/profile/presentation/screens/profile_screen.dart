import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/features/profile/presentation/screens/widgets/app_drawer.dart';
import 'package:arch_team_power/features/profile/presentation/screens/widgets/photos_section.dart';
import 'package:arch_team_power/features/profile/presentation/screens/widgets/profile_header.dart';
import 'package:arch_team_power/features/profile/presentation/screens/widgets/profile_tabs.dart';
import 'package:arch_team_power/features/profile/presentation/screens/widgets/subscription_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const AppDrawer(),
        backgroundColor: const Color(0xffF5F5F5),

        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),

                /// Header
                const ProfileHeader(),
                SizedBox(height: 25.h),

                /// Tabs
                const ProfileTabs(),
                SizedBox(height: 25.h),

                /// Subscription
                Text(
                  "اشتراكي",
                  style: AppTextStyles.syleNorsalMedium14(context),
                ),
                SizedBox(height: 10.h),
                const SubscriptionCard(),
                SizedBox(height: 25.h),

                /// Photos
                Text(
                  "صور قمت بمشاركتها",
                  style: AppTextStyles.syleNorsalMedium14(context),
                ),
                SizedBox(height: 15.h),
                const PhotosSection(),

                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
