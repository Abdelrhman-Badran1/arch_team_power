import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/features/splash_screen/presentation/manger/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    context.read<SplashCubit>().checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is SplashAuthenticated) {
          GoRouter.of(context).go(AppRouter.kHomeScreen);
        } else if (state is SplashUnAuthenticated) {
          GoRouter.of(context).go(AppRouter.kIntroHomeScreen);
        }
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFD2B48C),
          body: SizedBox.expand(
            child: Image.asset(
              "assets/image/spash_image.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
