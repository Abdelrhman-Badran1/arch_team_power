import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/features/Search_Fliter/widgets/chip_custom_widgets.dart';
import 'package:arch_team_power/features/Search_Fliter/widgets/distance_slider.dart';
import 'package:arch_team_power/features/Search_Fliter/widgets/raiting.dart';
import 'package:flutter/material.dart';

class FilterUI extends StatelessWidget {
  const FilterUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text(
            "تصفية البحث",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: AppColors.background,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'النوع',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 13),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  CustomChip(
                    text: "دينيه",
                    textColor: AppColors.background,
                    backgroundColor: AppColors.primary,
                  ),
                  CustomChip(
                    text: "تاريخيه",
                    textColor: AppColors.textPrimary,
                    backgroundColor: AppColors.background,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                ],
              ),

              const SizedBox(height: 16),
              DistanceSlider(),

              const SizedBox(height: 16),

              const Text(
                'التقييم',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  buildRatingTile('5.0 - 4.5', 5),
                  buildRatingTile('4.4 - 4.0', 4),
                  buildRatingTile('3.9 - 3.5', 4),
                  buildRatingTile('3.4 - 3.0', 3),
                  buildRatingTile('2.9 - 2.5', 3),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'نوع الكتابه',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 13),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  CustomChip(
                    text: "دينيه",
                    textColor: AppColors.background,
                    backgroundColor: AppColors.primary,
                  ),
                  CustomChip(
                    text: "تاريخيه",
                    textColor: AppColors.textPrimary,
                    backgroundColor: AppColors.background,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              const Text(
                'لغة التجمه',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  CustomChip(
                    text: "دينيه",
                    textColor: AppColors.background,
                    backgroundColor: AppColors.primary,
                  ),
                  CustomChip(
                    text: "تاريخيه",
                    textColor: AppColors.textPrimary,
                    backgroundColor: AppColors.background,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
