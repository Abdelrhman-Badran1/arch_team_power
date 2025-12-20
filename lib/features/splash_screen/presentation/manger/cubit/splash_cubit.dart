import 'package:arch_team_power/features/auth_screen/data/data_sources/auth_local_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final CheckAuthStatusUseCase checkAuthStatusUseCase;

  SplashCubit(this.checkAuthStatusUseCase) : super(SplashInitial());

  Future<void> checkAuth() async {
    await Future.delayed(const Duration(seconds: 2)); // splash delay

    final isLoggedIn = await checkAuthStatusUseCase();

    if (isLoggedIn) {
      emit(SplashAuthenticated());
    } else {
      emit(SplashUnAuthenticated());
    }
  }
}
