import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/Functions/spaceing/spaceing.dart';
import '../../../../../core/widgets/custom_app_bar_widget.dart';
import '../../../domain/entities/library_card_entity.dart';
import '../library_items_list_widget.dart';

class LibraryBodyWidget extends StatelessWidget {
  const LibraryBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 27.72.h, horizontal: 10.w),
        child: Column(
          children: [
            CustomAppBarWidget(title: "مكتبة النقوش الاثريه", onPressed: () {}),
            verticalSpace(20),
            Expanded(child: LibraryItemsListWidget(libraryCardEntity: LibraryCardEntity.cards)),
          ],
        ),
      ),
    );
  }
}
