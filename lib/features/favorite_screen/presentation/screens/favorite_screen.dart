import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/fav_list.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.86.w),

          child: Column(
            children: [
              SizedBox(height: 34.h),
              const CustomAppBar(title: "المفضلة"),
              SizedBox(height: 34.h),
              const Expanded(child: FavList()),
            ],
          ),
        ),
      ),
    );
  }
}
