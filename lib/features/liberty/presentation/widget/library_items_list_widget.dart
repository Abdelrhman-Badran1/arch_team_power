import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/entities/library_card_entity.dart';
import 'library_item_card_widget/library_item_card_widget.dart';

class LibraryItemsListWidget extends StatelessWidget {
  final List<LibraryCardEntity> libraryCardEntity;
  const LibraryItemsListWidget({super.key, required this.libraryCardEntity});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
      physics: BouncingScrollPhysics(),
      mainAxisSpacing: 10.68.w,
      crossAxisSpacing: 10.68.w,
      builder: (context, index) =>
          LibraryItemCardWidget(libraryCardEntity: libraryCardEntity[index]),
      itemCount:  libraryCardEntity.length,
      crossAxisCount: 2,
    );
  }
}
