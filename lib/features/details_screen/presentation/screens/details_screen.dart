import 'package:arch_team_power/features/details_screen/presentation/screens/manger/cubits/details_cubit/details_cubit.dart';
import 'package:arch_team_power/features/details_screen/presentation/screens/widget/details_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff9f8f8),
        body: BlocProvider(
          create: (context) => DetailsCubit(),
          child: const DetailsScreenBody(),
        ),
      ),
    );
  }
}
