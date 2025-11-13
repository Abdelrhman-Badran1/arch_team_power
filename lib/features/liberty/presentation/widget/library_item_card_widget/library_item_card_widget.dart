import 'package:arch_team_power/features/liberty/presentation/widget/library_item_card_widget/widgets/library%20_item_content_widget.dart';
import 'package:arch_team_power/features/liberty/presentation/widget/library_item_card_widget/widgets/library_image_with_favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/library_card_entity.dart';

class LibraryItemCardWidget extends StatelessWidget {
  final LibraryCardEntity libraryCardEntity;
  const LibraryItemCardWidget({super.key, required this.libraryCardEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LibraryImageWithFavorite(
            image: libraryCardEntity.image,
            isFavorite: libraryCardEntity.isFavorite,
          ),
          LibraryItemContentWidget(libraryCardEntity: libraryCardEntity),
        ],
      ),
    );
  }
}
