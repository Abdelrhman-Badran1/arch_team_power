import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/features/Notifications/widgets/action_button.dart';
import 'package:arch_team_power/features/Notifications/widgets/notifications_Item.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text("الإشعارات"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "مقروء",
                style: TextStyle(fontSize: 20, color: AppColors.disabled),
              ),
              SizedBox(width: 10),
              Text(
                "غير مقروء",
                style: TextStyle(fontSize: 20, color: AppColors.disabled),
              ),
              SizedBox(width: 10),
              Text(
                "الكل",
                style: TextStyle(fontSize: 20, color: AppColors.disabled),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(width: 10),

          NotificationItem(
            imagePath: "image/notifyImage.png",
            mainText:
                "تم تحديث حالة مشروع التوثيق الميداني اكتملت مرحلة التصوير التفصيلي",

            timeText: "الأربعاء الماضي الساعة 9:42",
            actions: const [
              ActionButton(
                title: "قبول",
                backgroundColor: AppColors.favorite,
                textColor: Colors.white,
              ),
              ActionButton(
                title: "رفض",
                backgroundColor: Colors.white,
                textColor: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
