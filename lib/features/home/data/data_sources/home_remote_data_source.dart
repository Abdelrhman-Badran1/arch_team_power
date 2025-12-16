import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/home/domain/entities/popular_places_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<PopularPlacesEntity>> fetchPopularPlaces();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<PopularPlacesEntity>> fetchPopularPlaces() {
    // TODO: implement fetchPopularPlaces
    throw UnimplementedError();
  }
}
