import 'package:arch_team_power/features/details_screen/presentation/screens/widget/details_page_view.dart';
import 'package:arch_team_power/features/details_screen/presentation/screens/widget/fav_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreenPageViewAndHeader extends StatelessWidget {
  const DetailsScreenPageViewAndHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DetailsPageView(),

        Positioned(
          top: 35.h,
          left: 14.h,
          right: 14.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(CupertinoIcons.back, color: Colors.white, size: 23.sp),
              FavButton(),
            ],
          ),
        ),
      ],
    );
  }
}
