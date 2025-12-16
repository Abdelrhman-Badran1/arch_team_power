import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/features/details_screen/presentation/data/details_actions.dart';
import 'package:arch_team_power/features/details_screen/presentation/screens/widget/details_screen_body_info_title_and_category_name.dart';
import 'package:arch_team_power/features/details_screen/presentation/screens/widget/similar_places_near_you_list_view.dart';
import 'package:arch_team_power/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreenBodyInfo extends StatelessWidget {
  const DetailsScreenBodyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DetailsScreenBodyInfoTitleAndCategoryName(),
          SizedBox(height: 20.h),
          SizedBox(
            height: 85.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                actions.length,
                (index) => actions[index],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            AppLocalizations.of(context)!.change_password,
            style: AppTextStyles.syleNorsalRegular14(
              context,
            ).copyWith(color: const Color(0xFFCE1225)),
          ),
          Text(
            '7:30 صباحا -4 مساء',
            style: AppTextStyles.syleNorsalRegular12(
              context,
            ).copyWith(color: const Color(0xFF282828)),
          ),
          SizedBox(height: 20.h),
          Text('الوصف', style: AppTextStyles.syleNorsalRegular14(context)),
          Text(
            'معبد الكرنك، الواقع في مدينة الأقصر بجنوب مصر، هو أحد أعظم المعابد في العالم وأكبر دور عبادة تاريخي شُيد في العصور القديمة، يتميز بقاعة الأعمدة الضخمة التي تضم 134 عمودًا شاهقًا، وطريق الكباش الممتد، والبحيرة المقدسة التي كانت تستخدم في الطقوس الدينية',
            style: AppTextStyles.syleNorsalMedium12(
              context,
            ).copyWith(color: const Color(0xFF8A8A8A)),
          ),
          SizedBox(height: 20.h),
          const SimilarPlacesNearYouListView(),
        ],
      ),
    );
  }
}
