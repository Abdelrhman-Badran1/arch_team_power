import 'package:arch_team_power/features/liberty/presentation/widget/library_item_card_widget/widgets/library_status_and_rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theme/app_text_style.dart';
import '../../../../../../../core/utils/Functions/spaceing/spaceing.dart';
import '../../../../domain/entities/library_card_entity.dart';
import 'library_location_widget.dart';

class LibraryItemContentWidget extends StatelessWidget {
  final LibraryCardEntity libraryCardEntity;
  const LibraryItemContentWidget({super.key, required this.libraryCardEntity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            libraryCardEntity.name,
            style: AppTextStyles.styleFontNorsalMedium12CGray20(context),
          ),
          verticalSpace(8),
          LibraryLocationWidget(location: libraryCardEntity.location),
          verticalSpace(8),
          LibraryStatusAndRateWidget(
            rate: libraryCardEntity.rate,
            status: libraryCardEntity.rate,
          ),
        ],
      ),
    );
  }
}
