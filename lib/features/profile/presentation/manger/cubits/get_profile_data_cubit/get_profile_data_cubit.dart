import 'package:arch_team_power/features/profile/domain/entities/profile_entity.dart';
import 'package:arch_team_power/features/profile/domain/repo/profile_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_profile_data_state.dart';

class GetProfileDataCubit extends Cubit<GetProfileDataState> {
  GetProfileDataCubit(this.profilerepo) : super(GetProfileDataInitial());
  final ProfileRepo profilerepo;
  Future<void> getProfileData() async {
    emit(GetProfileDataLoading());
    final data = await profilerepo.getHomeInfo();
    data.fold(
      (failure) {
        print(failure.message);
        emit(GetProfileDataFailure(errorMessage: failure.message));
      },
      (data) {
        emit(GetProfileDataSuccess(profileData: data));
      },
    );
  }
}
