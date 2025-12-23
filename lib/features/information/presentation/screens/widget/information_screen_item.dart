import 'package:arch_team_power/core/widgets/custom_fav_button.dart';
import 'package:arch_team_power/features/information/presentation/screens/widget/information_screen_item_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationScreenItem extends StatelessWidget {
  const InformationScreenItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Stack(
        children: [
          Container(
            height: 130.h,
            width: 297.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.white,
            ),
            child: const InformationScreenItemDetails(),
          ),
          Positioned(top: 10.5.h, left: 11.5.w, child: const CustomFavButton()),
        ],
      ),
    );
  }
}
