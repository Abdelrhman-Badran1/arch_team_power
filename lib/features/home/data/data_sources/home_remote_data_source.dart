import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/home/data/model/home/slider.data.dart';
import 'package:arch_team_power/features/home/data/model/popular/popular_place.dart';
import 'package:dio/dio.dart';

abstract class HomeRemoteDataSource {
  Future<List<Sliderr>> fetchSliders();
  Future<List<PopularPlace>> fetchPopularPlaces();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<Sliderr>> fetchSliders() async {
    try {
      final response = await apiService.get(endPoint: 'home');
      final dataJson = response['data']['sliders'] as List<dynamic>?;
      final sliders = dataJson
          ?.map((e) => Sliderr.fromJson(e as Map<String, dynamic>))
          .toList();
      return sliders ?? [];
    } catch (e) {
      throw Exception('Failed to fetch sliders: $e');
    }
  }

  @override
  Future<List<PopularPlace>> fetchPopularPlaces() async {
    try {
      final response = await apiService.get(endPoint: 'popular-places');

      if (response['data'] == null) {
        throw Exception('popular places is null');
      }

      return (response['data'] as List)
          .map((e) => PopularPlace.fromJson(e))
          .toList();
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Network error occurred');
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }
}
