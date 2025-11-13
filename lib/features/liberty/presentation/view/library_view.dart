import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../widget/library_item_card_widget/library_body_widget.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: LibraryBodyWidget(),
    );
  }
}
