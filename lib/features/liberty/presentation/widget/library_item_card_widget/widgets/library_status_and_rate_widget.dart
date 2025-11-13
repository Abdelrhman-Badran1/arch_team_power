import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/Functions/spaceing/spaceing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LibraryStatusAndRateWidget extends StatelessWidget {
  final String rate;
  final String status;
  const LibraryStatusAndRateWidget({
    super.key,
    required this.rate,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          " الحاله : $status",
          textAlign: TextAlign.end,
          style: AppTextStyles.styleFontNorsalMedium10kGray10(context),
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
        Text(rate, style: AppTextStyles.styleFontNorsalMedium10CGray(context)),
        Icon(Icons.star, color: Colors.amber, size: 20.sp),
        horizontalSpace(2),
      ],
    );
  }
}
