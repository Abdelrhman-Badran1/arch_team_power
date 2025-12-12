import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:arch_team_power/features/Notifications/presentation/screens/widgets/action_button.dart';
import 'package:arch_team_power/features/Notifications/presentation/screens/widgets/notifications_item.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          "الإشعارات",
          style: AppTextStyles.syleNorsalRegular20(context),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "مقروء",
                style: AppTextStyles.syleNorsalMedium13(
                  context,
                ).copyWith(color: AppColors.textHistory),
              ),
              const SizedBox(width: 10),
              Text(
                "غير مقروء",
                style: AppTextStyles.syleNorsalMedium13(
                  context,
                ).copyWith(color: AppColors.textHistory),
              ),
              const SizedBox(width: 10),
              Text(
                "الكل",
                style: AppTextStyles.syleNorsalMedium13(
                  context,
                ).copyWith(color: AppColors.textHistory),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const SizedBox(width: 10),

          NotificationItem(
            imagePath: AppAssets.kNotificationImafe,
            mainText:
                "تم تحديث حالة مشروع التوثيق الميداني اكتملت مرحلة التصوير التفصيلي",

            timeText: "الأربعاء الماضي الساعة 9:42",
            actions: [
              const ActionButton(
                title: "قبول",
                backgroundColor: AppColors.favorite,
                textColor: Colors.white,
              ),
              ActionButton(
                title: "رفض",

                textColor: Colors.black,
                borderColor: Border.all(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
