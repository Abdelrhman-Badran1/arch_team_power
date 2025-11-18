import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/features/Notifications/presentation/screens/widgets/action_button.dart';
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String imagePath;
  final String mainText;
  final String timeText;
  final List<ActionButton> actions;

  const NotificationItem({
    required this.imagePath,
    required this.mainText,
    required this.timeText,
    required this.actions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          SizedBox(
            height: 27,
            width: 27,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  mainText,
                  textAlign: TextAlign.right,
                  style: AppTextStyles.syleNorsalMedium15(context),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: actions
                      .map(
                        (action) => Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: action,
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 5),
                Text(
                  timeText,
                  textAlign: TextAlign.right,
                  style: AppTextStyles.syleNorsalRegular14(
                    context,
                  ).copyWith(color: AppColors.textHistory),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
