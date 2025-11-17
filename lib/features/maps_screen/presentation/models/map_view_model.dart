import 'dart:async';

import 'package:arch_team_power/core/utils/app_icons.dart';
import 'package:arch_team_power/core/utils/map_styles.dart';
import 'package:arch_team_power/features/maps_screen/presentation/models/map_place_model.dart';
import 'package:arch_team_power/features/maps_screen/presentation/screens/methods/build_custom_marker_method.dart';
import 'package:arch_team_power/features/maps_screen/presentation/screens/methods/go_rote_points_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewModel {
  final Function() onMapRefresh;
  final Completer<GoogleMapController> controller;

  String mapStyle = '';
  Set<Marker> markers = {};
  Set<Polyline> polylines = {};

  final List<MapPlaceModel> places = [
    MapPlaceModel(id: "1", location: const LatLng(29.97529, 31.13755)),
    MapPlaceModel(id: "2", location: const LatLng(29.9785, 31.13600)),
    MapPlaceModel(id: "3", location: const LatLng(29.97620, 31.13340)),
  ];

  final LatLng userLocation = const LatLng(
    30.046614845743317,
    31.224309633308458,
  );
  MapPlaceModel? get activePlace => places.cast<MapPlaceModel?>().firstWhere(
    (place) => place!.isActive,
    orElse: () => null,
  );

  MapViewModel({required this.onMapRefresh, required this.controller});

  Future<void> init() async {
    await loadMapStyle();
    await buildMarkers();
  }

  Future<void> loadMapStyle() async {
    mapStyle = await rootBundle.loadString(MapStyles.kMapStyle);
    onMapRefresh();
  }

  Future<void> buildMarkers() async {
    markers.clear();
    final zoom = await (await controller.future).getZoomLevel();

    for (var place in places) {
      final icon = await buildCustomMarker(
        mainIcon: place.isActive
            ? AppIcons.kSlectedMarkerIcon
            : AppIcons.kUnSlectedMarkerIcon,
        centerIcon: AppIcons.kTestIcon,
        markerSize: (place.isActive ? 65.0 : 45.0) * (zoom / 14.5),
        centerSize: (place.isActive ? 35.0 : 25.0) * (zoom / 14.5),
      );

      markers.add(
        Marker(
          markerId: MarkerId(place.id),
          position: place.location,
          icon: icon,
          onTap: () => selectPlace(place),
        ),
      );
    }

    final userIcon = await BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(30, 33)),
      AppIcons.kUserLocatMarkerIcon,
    );
    markers.add(
      Marker(
        markerId: const MarkerId("user"),
        position: userLocation,
        icon: userIcon,
      ),
    );

    onMapRefresh();
  }

  Future<void> selectPlace(MapPlaceModel place) async {
    for (var p in places) p.isActive = false;
    place.isActive = true;

    polylines.clear();
    final points = await getRoutePoints(userLocation, place.location);

    if (points.isNotEmpty) {
      polylines.add(
        Polyline(
          polylineId: const PolylineId("route"),
          color: const Color(0xFFD2B48C),
          width: 6,
          points: points,
          jointType: JointType.round,
        ),
      );

      final bounds = LatLngBounds(
        southwest: userLocation,
        northeast: place.location,
      );
      final cameraController = await controller.future;
      cameraController.animateCamera(CameraUpdate.newLatLngBounds(bounds, 100));
    }

    await buildMarkers();
  }

  void clearSelection() {
    if (activePlace != null) {
      for (var p in places) p.isActive = false;
      polylines.clear();
      buildMarkers();
    }
  }
}
