import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_icons.dart';
import 'package:flutter/material.dart';

Widget buildMessage(
  BuildContext context, {
  required String name,
  required String role,
  required String text,
  required String imagePath,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),

            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // الصورة والاسم والصفة
          Row(
            children: [
              CircleAvatar(radius: 25, backgroundImage: AssetImage(imagePath)),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: AppTextStyles.syleNorsalMedium12(context)),
                  Text(
                    role,
                    style: AppTextStyles.syleNorsalRegular10(context).copyWith(
                      color: Color(0xFF8A8A8A),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 10),

          // الكومنت
          Text(
            text,
            style: AppTextStyles.syleNorsalRegular12(
              context,
            ).copyWith(color: Color(0xFF8A8A8A)),
          ),

          const SizedBox(height: 10),

          // الصورة
          const SizedBox(height: 10),

          // اللايكات
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imagePath,
                      width: 116,
                      height: 88,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 9,
                    child: Text(
                      "1/4",
                      style: TextStyle(color: AppColors.white, fontSize: 20),
                    ),
                  ),

                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (index) {
                        bool isActive = index == 0; // خلي الصورة الحالية رقم 0
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Container(
                            width: isActive ? 12 : 6,
                            height: isActive ? 3 : 6,
                            decoration: BoxDecoration(
                              color: isActive
                                  ? AppColors.white
                                  : Colors.grey[400],
                              borderRadius: isActive
                                  ? BorderRadius.circular(2)
                                  : BorderRadius.circular(50),
                            ),
                          ),
                        );
                      }), //
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 45, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Image.asset(AppIcons.kLike2Icon, width: 18, height: 18),
                    const SizedBox(width: 4),
                    const Text('200'),
                    const SizedBox(width: 16),
                    Image.asset(AppIcons.kDisLikeIcon, width: 18, height: 18),
                    const SizedBox(width: 4),
                    const Text('30'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
