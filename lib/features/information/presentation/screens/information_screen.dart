import 'package:arch_team_power/core/services/service_locator.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/sub_places_cubit/sub_places_cubit.dart';
import 'package:arch_team_power/features/information/presentation/screens/widget/information_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<SubPlacesCubit>()..getSubPlaces()),
      ],
      child: Scaffold(
        backgroundColor: const Color(0xfff9f8f8),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.86.w),
            child: const InformationScreenBody(),
          ),
        ),
      ),
    );
  }
}
