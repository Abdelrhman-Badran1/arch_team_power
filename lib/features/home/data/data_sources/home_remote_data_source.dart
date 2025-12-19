import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/home/data/model/home/data.data.dart';
import 'package:arch_team_power/features/home/data/model/home/slider.data.dart';
import 'package:arch_team_power/features/home/domain/entities/popular_places_entity.dart';
import 'package:flutter/material.dart';

abstract class HomeRemoteDataSource {
  Future<List<PopularSectionEntity>> fetchPopularPlaces();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<Sliderr>> getSliders() async {
    final response = await apiService.get(endPoint: 'home');

    final data = Dataa.fromJson(response['data']);

    return data.sliders ?? [];
  }

  Future<List<PopularSectionEntity>> fetchPopularPlaces() {
    // TODO: implement fetchPopularPlaces
    throw UnimplementedError();
  }
}
