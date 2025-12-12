import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EmptyNotesWidget extends StatelessWidget {
  const EmptyNotesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppAssets.kEmptyNotesImage),
        SizedBox(height: 10.h),
        Text(
          'قم بإضافة ملاحظات جديدة',
          style: AppTextStyles.syleNorsalMedium15(context),
        ),
      ],
    );
  }
}
