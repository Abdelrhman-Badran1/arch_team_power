import 'package:animate_do/animate_do.dart';
import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/utils/app_icons.dart';
import 'package:arch_team_power/features/camera/presentation/screens/camera_screen.dart';
import 'package:arch_team_power/features/favorite_screen/presentation/screens/favorite_screen.dart';
import 'package:arch_team_power/features/layout/presentation/pages/home/screens/home_sceen.dart';
import 'package:arch_team_power/features/layout/presentation/pages/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../maps_screen/presentation/screens/map_screen.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    MapScreen(),
    CameraScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: selectedIndex == 2
          ? null
          : BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              backgroundColor: Colors.white,
              unselectedItemColor: AppColors.unSelectItemSelectedColor,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              fixedColor: AppColors.unSelectItemSelectedColor,
              selectedLabelStyle: TextStyle(
                color: AppColors.primary,
                fontStyle: FontStyle.normal,
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
              items: [
                customBtnItem(image: AppIcons.kHomeIcon, label: "الرئيسية"),
                customBtnItem(
                  image: AppIcons.kLocatMarkerIcon,
                  label: "الخرائط",
                ),
                customBtnItem(image: AppIcons.kCameraIcon, label: "الكاميرا"),
                customBtnItem(image: AppIcons.kFavIcon, label: "المفضله"),
                customBtnItem(
                  image: AppIcons.kPrsonalIcon,
                  label: "الملف الشخصي",
                ),
              ],
            ),
      body: screens[selectedIndex],
    );
  }

  BottomNavigationBarItem customBtnItem({
    required String image,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(image, color: Colors.black),
      activeIcon: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.black.withOpacity(.09),
        ),
        child: ZoomIn(
          animate: true,
          child: SvgPicture.asset(image, color: AppColors.primary),
        ),
      ),
      label: label,
    );
  }
}
