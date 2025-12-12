import 'package:arch_team_power/features/library/presentation/screens/widget/library_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff9f8f8),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.86.w),
          child: const LibraryScreenBody(),
        ),
      ),
    );
  }
}
