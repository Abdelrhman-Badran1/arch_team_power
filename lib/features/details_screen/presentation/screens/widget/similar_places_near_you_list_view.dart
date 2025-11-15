import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/features/details_screen/presentation/screens/widget/similar_places_near_you_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarPlacesNearYouListView extends StatelessWidget {
  const SimilarPlacesNearYouListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          'أماكن مشابهه بالقرب منك',
          style: AppTextStyles.syleNorsalRegular14(context),
        ),
        SizedBox(height: 14.h),
        SizedBox(
          height: 90.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SimilarPlacesNearYouItem(),
            ),
            itemCount: 10,
          ),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
