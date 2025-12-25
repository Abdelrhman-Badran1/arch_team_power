import 'dart:io';
import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/auth_screen/data/data_sources/auth_local_data_source.dart';
import 'package:arch_team_power/features/auth_screen/data/data_sources/auth_remote_data_source.dart';
import 'package:arch_team_power/features/auth_screen/data/repos_impl/auth_repo_impl.dart';
import 'package:arch_team_power/features/auth_screen/domain/repo/auth_repo.dart';
import 'package:arch_team_power/features/auth_screen/domain/use_cases/login_use_case.dart';
import 'package:arch_team_power/features/auth_screen/domain/use_cases/signup_use_case.dart';
import 'package:arch_team_power/features/comments/data/remote_data_source/commernts_remote_data_source.dart';
import 'package:arch_team_power/features/comments/data/repo_impl/commernt_repo_impl.dart';
import 'package:arch_team_power/features/comments/domain/repo/commernt_repo.dart';
import 'package:arch_team_power/features/comments/presentation/manger/addCommenCubit/cubit/add_comment_cubit.dart';
import 'package:arch_team_power/features/home/data/data_sources/home_local_data_source.dart';
import 'package:arch_team_power/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:arch_team_power/features/home/data/repos_impl/home_repo_impl.dart';
import 'package:arch_team_power/features/home/domain/repo/home_repo.dart';
import 'package:arch_team_power/features/home/presentation/manger/banner_cubit/banner_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/cubit/slider_cubit_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/pubularPlaces/pobular_cubit.dart';
import 'package:arch_team_power/features/notes/data/data_source/notes_remote_data_source.dart';
import 'package:arch_team_power/features/notes/data/repo_impl/notes_repo_impl.dart';
import 'package:arch_team_power/features/notes/domain/repo/notes_repo.dart';
import 'package:arch_team_power/features/notes/domain/use_cases/create_note_use_case.dart';
import 'package:arch_team_power/features/notes/domain/use_cases/del_note_use_case.dart';
import 'package:arch_team_power/features/notes/domain/use_cases/edit_note_use_case.dart';
import 'package:arch_team_power/features/notes/domain/use_cases/get_notes_use_case.dart';
import 'package:arch_team_power/features/notes/presentation/screens/manger/cubits/create_note_cubit/create_note_cubit.dart';
import 'package:arch_team_power/features/notes/presentation/screens/manger/cubits/delete_note_cubit/delete_note_cubit.dart';
import 'package:arch_team_power/features/notes/presentation/screens/manger/cubits/edit_notes_cubit/edit_notes_cubit.dart';
import 'package:arch_team_power/features/notes/presentation/screens/manger/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:arch_team_power/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:arch_team_power/features/profile/data/repos_impl/profile_repo_impl.dart';
import 'package:arch_team_power/features/profile/domain/repo/profile_repo.dart';
import 'package:arch_team_power/features/profile/presentation/manger/cubits/get_profile_data_cubit/get_profile_data_cubit.dart';
import 'package:dio/io.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  // localDataSources //
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(),
  );

  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(),
  );
  // dio //
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio();
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    dio.interceptors.add(AuthInterceptor(sl<AuthLocalDataSource>()));

    return dio;
  });
  // apiService //
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<Dio>()));
  // RemoteDataSource //
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl<ApiService>()),
  );

  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(sl<ApiService>()),
  );
  sl.registerLazySingleton<CommentRemoteDataSource>(
    () => CommentRemoteDataSourceImpl(sl<ApiService>()),
  );

  sl.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  sl.registerLazySingleton<NotesRemoteDataSource>(
    () => NotesRemoteDataSourceImpl(sl<ApiService>()),
  );
  // repo //
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
  sl.registerLazySingleton<CommentRepo>(
    () => CommerntRepoImpl(sl<CommentRemoteDataSource>()),
  );

  sl.registerLazySingleton<ProfileRepo>(
    () =>
        ProfilerepoImpl(profileRemoteDataSource: sl<ProfileRemoteDataSource>()),
  );
  // use cases //
  sl.registerLazySingleton(() => LoginUseCase(sl<AuthRepo>()));
  sl.registerLazySingleton(() => GetNotesUseCase(notesRepo: sl<NotesRepo>()));
  sl.registerLazySingleton(() => EditNoteUseCase(notesRepo: sl<NotesRepo>()));
  sl.registerLazySingleton(() => DelNoteUseCase(notesRepo: sl<NotesRepo>()));
  sl.registerLazySingleton(() => CreateNoteUseCase(notesRepo: sl<NotesRepo>()));
  sl.registerLazySingleton(() => SignupUseCase(sl<AuthRepo>()));

  // cubits //
  sl.registerFactory(() => ProfileDataCubit(sl<ProfileRepo>()));
  sl.registerFactory(() => SliderCubitCubit(sl<HomeRepo>()));
  sl.registerFactory(() => GetNotesCubit(sl<GetNotesUseCase>()));
  sl.registerFactory(() => EditNotesCubit(sl<EditNoteUseCase>()));
  sl.registerFactory(() => DeleteNoteCubit(sl<DelNoteUseCase>()));
  sl.registerFactory(() => CreateNoteCubit(sl<CreateNoteUseCase>()));
  sl.registerFactory(() => BannerCubit(sl<HomeRepo>()));
  sl.registerFactory(() => PobularCubit(sl<HomeRepo>()));
  sl.registerFactory(() => BannerCubit(sl<HomeRepo>()));
  sl.registerFactory(() => AddCommentCubit(sl<CommentRepo>()));
}
