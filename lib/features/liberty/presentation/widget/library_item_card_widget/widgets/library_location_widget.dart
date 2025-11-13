import 'package:arch_team_power/core/images/app_images.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

import '../../../../../../core/utils/Functions/spaceing/spaceing.dart';

class LibraryLocationWidget extends StatelessWidget {
  final String location;
  const LibraryLocationWidget({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        SvgPicture.asset(
          AppImages.localtions,
          width: 8.66.w,
          height: 8.66.h,
          fit: BoxFit.cover,
        ),
        horizontalSpace(4),
        Text(
         location,
          style: AppTextStyles.styleFontNorsalMedium12CGray(context),
        ),
      ],
    );
  }
}
