import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:arch_team_power/features/information/presentation/screens/widget/information_screen_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationScreenBody extends StatelessWidget {
  const InformationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35.h),
        CustomAppBar(title: 'معلومات اثريه'),
        SizedBox(height: 35.h),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => InformationScreenItem(),
          ),
        ),
      ],
    );
  }
}
