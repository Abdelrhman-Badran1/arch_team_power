import 'package:animate_do/animate_do.dart';
import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/features/layout/presentation/pages/add_palace_screen.dart';
import 'package:arch_team_power/features/layout/presentation/pages/fav_screen.dart';
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
    HomeSceen(),
    MapScreen(),
    AddPalaceScreen(),
    FavScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
          customBtnItem(image: "home_icon.svg", label: "الرئيسية"),
          customBtnItem(image: "local_icon.svg", label: "الخرائط"),
          customBtnItem(image: "two_icon.svg", label: "الكاميرا"),
          customBtnItem(image: "fav_icon.svg", label: "المفضله"),
          customBtnItem(image: "personal_icon.svg", label: "الملف الشخصي"),
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
      icon: SvgPicture.asset("assets/icons/$image", color: Colors.black),
      activeIcon: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.black.withOpacity(.09),
        ),
        child: ZoomIn(
          animate: true,
          child: SvgPicture.asset(
            "assets/icons/$image",
            color: AppColors.primary,
          ),
        ),
      ),
      label: label,
    );
  }
}
