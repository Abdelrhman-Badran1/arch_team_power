import 'package:arch_team_power/features/home/domain/entities/popular_places_entity.dart';

abstract class HomeLocalDataSource {
  Future<PopularPlacesEntity> getPopularPlaces();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  Future<PopularPlacesEntity> getPopularPlaces() {
    // TODO: implement getPopularPlaces
    throw UnimplementedError();
  }
}
