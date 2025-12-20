import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/auth_screen/data/data_sources/auth_local_data_source.dart';
import 'package:arch_team_power/features/profile/data/models/profile_model/profile_model.dart';
import 'package:arch_team_power/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileEntity> getprofileInfo();
  Future<ProfileEntity> updateProfileInfo({
    required String name,
    required String email,
    String? profileImage,
  });
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final ApiService apiService;
  final AuthLocalDataSource authLocalDataSource;

  ProfileRemoteDataSourceImpl({
    required this.apiService,
    required this.authLocalDataSource,
  });

  @override
  Future<ProfileEntity> getprofileInfo() async {
    final data = await apiService.get(endPoint: 'profile');

    return ProfileModel.fromJson(data);
  }

  @override
  Future<ProfileEntity> updateProfileInfo({
    required String name,
    required String email,
    String? profileImage,
  }) async {
    final response = await apiService.post(
      endPoint: 'profile',
      data: {'name': name, 'email': email, 'profile_image': profileImage},
    );

    return ProfileEntity.fromJson(response);
  }
}
