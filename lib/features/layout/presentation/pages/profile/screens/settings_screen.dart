import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../categories/settings_items.dart';
import '../../../widget/profile_screen_widgets/settings_item_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.86.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 34.h),
                CustomAppBar(title: 'الاعدادات'),
                SizedBox(height: 34.h),

                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: SettingsItemsData.items.length,
                  separatorBuilder: (_, __) => SizedBox(height: 12.h),
                  itemBuilder: (context, index) {
                    return SettingsItemTile(
                      onTap: () {
                        if (index == 2) {
                          GoRouter.of(context).push(AppRouter.kPaymentPage);
                        }
                      },
                      item: SettingsItemsData.items[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
