import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/auth_screen/domain/entities/user_entity.dart';

abstract class AuthRemoteDataSource {
  Future<UserEntity> login(String email, String password);
  Future<UserEntity> signup(String name, String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiService apiService;

  AuthRemoteDataSourceImpl(this.apiService);

  @override
  Future<UserEntity> login(String email, String password) async {
    final response = await apiService.post(
      endPoint: 'login',
      data: {'email': email, 'password': password},
    );
    return UserEntity.fromJson(response);
  }

  @override
  Future<UserEntity> signup(String name, String email, String password) async {
    final response = await apiService.post(
      endPoint: 'register',
      data: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': password,
        'role': 'user',
      },
    );
    return UserEntity.fromJson(response);
  }
}
