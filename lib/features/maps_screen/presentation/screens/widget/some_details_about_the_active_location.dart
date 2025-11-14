import 'package:arch_team_power/features/maps_screen/presentation/screens/widget/some_details_about_the_active_place_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SomeDetailsAboutTheActivePlace extends StatelessWidget {
  const SomeDetailsAboutTheActivePlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Container(
        height: 112.h,
        width: 248.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 91.w,
                height: 88.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/map/mdaen_test_image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SomeDetailsAboutTheActivePlaceInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
