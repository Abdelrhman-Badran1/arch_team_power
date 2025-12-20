import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/home/data/model/home/data.data.dart';
import 'package:arch_team_power/features/home/data/model/home/slider.data.dart';
import 'package:arch_team_power/features/home/domain/entities/popular_places_entity.dart';
import 'package:flutter/material.dart';

abstract class HomeRemoteDataSource {
  Future<List<PopularSectionEntity>> fetchPopularPlaces();
  Future<List<Sliderr>> fetchSliders();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

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

  Future<List<PopularSectionEntity>> fetchPopularPlaces() {
    // TODO: implement fetchPopularPlaces
    throw UnimplementedError();
  }
}
