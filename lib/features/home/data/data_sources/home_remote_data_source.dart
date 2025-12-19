import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/home/data/model/home_data.dart';
import 'package:arch_team_power/features/home/data/model/slider.dart';
import 'package:arch_team_power/features/home/domain/entities/popular_places_entity.dart';
import 'package:flutter/material.dart';

abstract class HomeRemoteDataSource {
  Future<List<PopularPlacesEntity>> fetchPopularPlaces();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<Sliders>> getSliders() async {
    final response = await apiService.get(endPoint: '/home');
    final homedata = HomeData.fromJson(response);
    return homedata.sliders ?? [];
  }

  Future<List<PopularPlacesEntity>> fetchPopularPlaces() {
    // TODO: implement fetchPopularPlaces
    throw UnimplementedError();
  }
}
