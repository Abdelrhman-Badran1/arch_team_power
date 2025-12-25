import 'package:arch_team_power/features/home/presentation/screens/widgets/archaeological_information_header.dart';
import 'package:arch_team_power/features/information/presentation/screens/widget/information_screen_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArchaeologicalInformationWidget extends StatelessWidget {
  const ArchaeologicalInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ArchaeologicalInformationHeader(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => const InformationScreenItem(),
          ),
        ),
      ],
    );
  }
}
