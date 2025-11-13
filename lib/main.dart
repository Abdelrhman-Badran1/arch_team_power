import 'package:arch_team_power/features/opetion/view/option_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/liberty/presentation/view/library_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(324.77, 703.23),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LibraryView(),
        );
        // return MaterialApp.router(
        //   debugShowCheckedModeBanner: false,
        //   routerConfig: AppRouter.router,
        // );
      },
    );
  }
}
