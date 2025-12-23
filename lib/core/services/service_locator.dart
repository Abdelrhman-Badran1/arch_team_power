import 'dart:io';

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
import 'package:arch_team_power/features/home/presentation/manger/banner_cubit/banner_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/cubit/slider_cubit_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/pubularPlaces/pobular_cubit.dart';
import 'package:arch_team_power/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:arch_team_power/features/profile/data/repos_impl/profile_repo_impl.dart';
import 'package:arch_team_power/features/profile/domain/repo/profile_repo.dart';
import 'package:dio/io.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  // ===== Local Data Sources =====
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(),
  );

  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(),
  );

  // ===== Dio =====
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio();

    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (client) {
          client.badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
          return client;
        };

    dio.interceptors.add(AuthInterceptor(sl<AuthLocalDataSource>()));

    return dio;
  });

  // ===== Api Service =====
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<Dio>()));

  // ===== Remote Data Sources =====
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl<ApiService>()),
  );

  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(sl<ApiService>()),
  );

  sl.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );

  // ===== Repositories =====
  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(
      remoteDataSource: sl<AuthRemoteDataSource>(),
      localDataSource: sl<AuthLocalDataSource>(),
    ),
  );

  sl.registerLazySingleton<HomeRepo>(
    () => HomeRepoImplemtion(
      sl<HomeRemoteDataSource>(),
      sl<HomeLocalDataSource>(),
    ),
  );

  sl.registerLazySingleton<ProfileRepo>(
    () =>
        ProfilerepoImpl(profileRemoteDataSource: sl<ProfileRemoteDataSource>()),
  );

  // ===== Use Cases =====
  sl.registerLazySingleton(() => LoginUseCase(sl<AuthRepo>()));
  sl.registerLazySingleton(() => SignupUseCase(sl<AuthRepo>()));

  // ===== Cubits =====
  sl.registerFactory(() => SliderCubitCubit(sl<HomeRepo>()));
  sl.registerFactory(() => PobularCubit(sl<HomeRepo>()));
  sl.registerFactory(() => BannerCubit(sl<HomeRepo>()));
}
