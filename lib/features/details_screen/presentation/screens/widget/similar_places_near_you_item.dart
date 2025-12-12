import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarPlacesNearYouItem extends StatelessWidget {
  const SimilarPlacesNearYouItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64.h,
          width: 64.w,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(AppAssets.kTestImage5),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Text(
          'وادي الملوك',
          style: AppTextStyles.syleNorsalRegular12(
            context,
          ).copyWith(color: const Color(0xFF8A8A8A)),
        ),
      ],
    );
  }
}
