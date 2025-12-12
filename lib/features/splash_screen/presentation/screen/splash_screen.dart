import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      GoRouter.of(context).go(AppRouter.kIntroHomeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFD2B48C),
        body: SizedBox.expand(
          child: Image.asset("assets/image/spash_image.png", fit: BoxFit.cover),
        ),
      ),
    );
  }
}
