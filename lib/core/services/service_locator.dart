import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/auth_screen/data/data_sources/auth_local_data_source.dart';
import 'package:arch_team_power/features/auth_screen/data/data_sources/auth_remote_data_source.dart';
import 'package:arch_team_power/features/auth_screen/data/repos_impl/auth_repo_impl.dart';
import 'package:arch_team_power/features/auth_screen/domain/repo/auth_repo.dart';
import 'package:arch_team_power/features/auth_screen/domain/use_cases/login_use_case.dart';
import 'package:arch_team_power/features/auth_screen/domain/use_cases/signup_use_case.dart';
import 'package:arch_team_power/features/home/data/data_sources/home_local_data_source.dart';
import 'package:arch_team_power/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:arch_team_power/features/home/data/repos_impl/home_repo_impl.dart';
import 'package:arch_team_power/features/home/domain/repo/home_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  // Local
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(sl<ApiService>()),
  );
  sl.registerLazySingleton<HomeRepo>(
    () => HomeRepoImplemtion(
      sl<HomeRemoteDataSource>(),
      sl<HomeLocalDataSource>(),
    ),
  );

  // Dio
  sl.registerLazySingleton<Dio>(() {
    return Dio(
      BaseOptions(
        baseUrl: "https://archtech.test-trifhi.com/api/",
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {'Accept': 'application/json'},
      ),
    );
  });

  // Api Service
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<Dio>()));

  // Remote
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl<ApiService>()),
  );

  // Repo
  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(
      remoteDataSource: sl<AuthRemoteDataSource>(),
      localDataSource: sl<AuthLocalDataSource>(),
    ),
  );

  // UseCases
  sl.registerLazySingleton(() => LoginUseCase(sl<AuthRepo>()));
  sl.registerLazySingleton(() => SignupUseCase(sl<AuthRepo>()));
  sl.registerLazySingleton(
    () => CheckAuthStatusUseCase(sl<AuthLocalDataSource>()),
  );
}
