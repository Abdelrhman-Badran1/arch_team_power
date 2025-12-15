import 'package:arch_team_power/features/information/presentation/screens/manger/cubits/information_cubit/information_cubit.dart';
import 'package:arch_team_power/features/information/presentation/screens/widget/information_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InformationCubit(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xfff9f8f8),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.86.w),
            child: InformationScreenBody(),
          ),
        ),
      ),
    );
  }
}
