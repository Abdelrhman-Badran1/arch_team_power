import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/utils/app_icons.dart';
import 'package:flutter/material.dart';

Widget buildWriteMessegeAndSend() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "اكتب تعليق...",
              filled: true,
              fillColor: AppColors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.favorite, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.primary, width: 0.0),
              ),
            ),
          ),
        ),

        const SizedBox(width: 20),

        // زرار الإرسال
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.favorite, // لون البوردر
              width: 1, // سمك البوردر
            ),
          ),
          child: Image.asset(
            AppIcons.kSendMessageIcon,
            width: 22,
            height: 22,
            color: AppColors.favorite,
          ),
        ),
      ],
    ),
  );
}
