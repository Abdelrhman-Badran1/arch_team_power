import 'package:arch_team_power/core/errors/failure.dart';
import 'package:arch_team_power/features/home/data/model/home/slider.data.dart';
import 'package:arch_team_power/features/home/domain/entities/popular_places_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class HomeRepo {
  // Future<Either<Failure, List<Slider>>> fetchSlider();
  Future<Either<Failure, List<Sliderr>>> fetchSliders();
  Future<Either<Failure, List<PopularSectionEntity>>> fetchPopularPlaces();
}
