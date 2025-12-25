import 'package:arch_team_power/core/services/service_locator.dart';
import 'package:arch_team_power/features/home/presentation/manger/banner_cubit/banner_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/cubit/slider_cubit_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/pubularPlaces/pobular_cubit.dart';
import 'package:arch_team_power/features/home/presentation/screens/widgets/home_screen_body.dart';
import 'package:arch_team_power/features/profile/domain/repo/profile_repo.dart';
import 'package:arch_team_power/features/profile/presentation/manger/cubits/get_profile_data_cubit/get_profile_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => sl<SliderCubitCubit>()..fetchSliders(),
            ),
            BlocProvider(
              create: (context) => sl<PobularCubit>()..fetchPopularPlaces(),
            ),
            BlocProvider(
              create: (context) => sl<BannerCubit>()..fetchBanners(),
            ),
            BlocProvider(
              create: (context) =>
                  ProfileDataCubit(sl<ProfileRepo>())..getProfileData(),
            ),
          ],
          child: const HomeScreenBody(),
        ),
      ),
    );
  }
}
