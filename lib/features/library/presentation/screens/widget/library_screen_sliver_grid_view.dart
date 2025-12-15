import 'package:arch_team_power/features/library/presentation/screens/widget/library_screen_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LibraryScreenSliverGridView extends StatelessWidget {
  const LibraryScreenSliverGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      clipBehavior: Clip.none,
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 50.h,
        crossAxisSpacing: 10.w,
      ),
      itemBuilder: (context, index) => const Center(child: LibraryScreenItem()),
    );
  }
}
