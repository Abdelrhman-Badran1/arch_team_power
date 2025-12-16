import 'package:arch_team_power/core/errors/failure.dart';
import 'package:arch_team_power/features/home/data/data_sources/home_local_data_source.dart';
import 'package:arch_team_power/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:arch_team_power/features/home/domain/entities/popular_places_entity.dart';
import 'package:arch_team_power/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class PopularPlacesDetailsRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  PopularPlacesDetailsRepoImpl(
    this.homeRemoteDataSource,
    this.homeLocalDataSource,
  );

  @override
  Future<Either<Failure, List<PopularPlacesEntity>>> fetchPopularPlaces() {
    // TODO: implement fetchPopularPlaces
    throw UnimplementedError();
  }
}
