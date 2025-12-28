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
import 'package:arch_team_power/features/comments/presentation/manger/GetCommentCubit/cubit/get_comment_cubit.dart';
import 'package:arch_team_power/features/comments/presentation/manger/addCommenCubit/cubit/add_comment_cubit.dart';
import 'package:arch_team_power/features/home/data/data_sources/home_local_data_source.dart';
import 'package:arch_team_power/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:arch_team_power/features/home/data/repos_impl/home_repo_impl.dart';
import 'package:arch_team_power/features/home/domain/repo/home_repo.dart';
import 'package:arch_team_power/features/home/domain/use_cases/get_inscriptions_details_use_case.dart';
import 'package:arch_team_power/features/home/domain/use_cases/get_inscriptions_library_use_case.dart';
import 'package:arch_team_power/features/home/domain/use_cases/get_sub_places_details_use_case.dart';
import 'package:arch_team_power/features/home/domain/use_cases/get_sub_places_use_case.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/Inscriptions_details_cubit/inscriptions_details_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/banner_cubit/banner_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/inscriptions_library_cubit/inscriptions_library_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/slider_cubit/slider_cubit_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/pubularPlaces/pobular_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/sub_places_cubit/sub_places_cubit.dart';
import 'package:arch_team_power/features/home/presentation/manger/cubits/sub_places_details_cubit/sub_places_details_cubit.dart';
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
import 'package:arch_team_power/features/profile/presentation/manger/cubits/log_out_cubit/log_out_cubit.dart';
import 'package:dio/io.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  // Local DataSources //
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(),
  );

  // Dio //
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

  // ApiService //
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<Dio>()));

  // Remote DataSources //
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

  // Repositories //
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
  sl.registerLazySingleton<NotesRepo>(
    () => NotesRepoImpl(remoteDataSource: sl<NotesRemoteDataSource>()),
  );
  sl.registerLazySingleton<CommentRepo>(
    () => CommerntRepoImpl(sl<CommentRemoteDataSource>()),
  );

  sl.registerLazySingleton<ProfileRepo>(
    () =>
        ProfilerepoImpl(profileRemoteDataSource: sl<ProfileRemoteDataSource>()),
  );

  // Use Cases //
  sl.registerLazySingleton(() => LoginUseCase(sl<AuthRepo>()));
  sl.registerLazySingleton(() => SignupUseCase(sl<AuthRepo>()));

  sl.registerLazySingleton(() => GetNotesUseCase(notesRepo: sl<NotesRepo>()));
  sl.registerLazySingleton(() => EditNoteUseCase(notesRepo: sl<NotesRepo>()));
  sl.registerLazySingleton(() => DelNoteUseCase(notesRepo: sl<NotesRepo>()));
  sl.registerLazySingleton(() => CreateNoteUseCase(notesRepo: sl<NotesRepo>()));

  sl.registerLazySingleton(
    () => GetSubPlacesDetailsUseCase(homeRepo: sl<HomeRepo>()),
  );
  sl.registerLazySingleton(() => GetSubPlacesUseCase(homeRepo: sl<HomeRepo>()));
  sl.registerLazySingleton(
    () => GetInscriptionsDetailsUseCase(homeRepo: sl<HomeRepo>()),
  );
  sl.registerLazySingleton(
    () => GetInscriptionsUseCase(homeRepo: sl<HomeRepo>()),
  );

  // Cubits //
  sl.registerFactory(() => ProfileDataCubit(sl<ProfileRepo>()));
  sl.registerFactory(
    () => LogOutCubit(
      authLocalDataSource: sl<AuthLocalDataSource>(),
      profilerepo: sl<ProfileRepo>(),
    ),
  );
  sl.registerFactory(() => SliderCubitCubit(sl<HomeRepo>()));
  sl.registerFactory(() => GetNotesCubit(sl<GetNotesUseCase>()));
  sl.registerFactory(() => EditNotesCubit(sl<EditNoteUseCase>()));
  sl.registerFactory(() => DeleteNoteCubit(sl<DelNoteUseCase>()));
  sl.registerFactory(() => CreateNoteCubit(sl<CreateNoteUseCase>()));
  sl.registerFactory(() => BannerCubit(sl<HomeRepo>()));
  sl.registerFactory(() => PobularCubit(sl<HomeRepo>()));
  sl.registerFactory(() => SubPlacesCubit(sl<GetSubPlacesUseCase>()));
  sl.registerFactory(
    () => SubPlacesDetailsCubit(sl<GetSubPlacesDetailsUseCase>()),
  );

  sl.registerFactory(
    () => InscriptionsDetailsCubit(sl<GetInscriptionsDetailsUseCase>()),
  );
  sl.registerFactory(() => GetCommentCubit(sl<CommentRepo>()));
  sl.registerFactory(
    () => InscriptionsLibraryCubit(sl<GetInscriptionsUseCase>()),
  );
  sl.registerFactory(() => AddCommentCubit(sl<CommentRepo>()));
}
