import 'package:arch_team_power/features/details_screen/presentation/data/details_image_list.dart';
import 'package:arch_team_power/features/details_screen/presentation/screens/widget/dot_indctor.dart';
import 'package:flutter/material.dart';

class DotIdctorList extends StatelessWidget {
  const DotIdctorList({super.key, required this.cruntPageIndex});

  final int cruntPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(detailsImageList.length, (index) {
        return CustomDotIndicator(isActive: index == cruntPageIndex);
      }),
    );
  }
}
