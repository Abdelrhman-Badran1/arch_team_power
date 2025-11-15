import 'dart:async';

import 'package:arch_team_power/core/utils/app_icons.dart';
import 'package:arch_team_power/features/maps_screen/presentation/models/map_place_model.dart';
import 'package:arch_team_power/features/maps_screen/presentation/screens/methods/build_custom_marker_method.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Future<void> loadMarkers(
  List<MapPlaceModel> places,
  Completer<GoogleMapController> controller,
  Set<Marker> markers,
  Set<Polyline> polylines,
  void Function(void Function() fn) setState,
) async {
  markers.clear();

  LatLng userLocation = const LatLng(29.9773, 31.1325);

  final GoogleMapController mapController = await controller.future;
  final zoomLevel = await mapController.getZoomLevel();

  for (var item in places) {
    double baseMarkerSize = item.isActive ? 65 : 45;
    double baseCenterSize = item.isActive ? 35 : 25;

    final scaleFactor = zoomLevel / 14.5;
    final markerSize = baseMarkerSize * scaleFactor;
    final centerSize = baseCenterSize * scaleFactor;

    final icon = await buildCustomMarker(
      mainIcon: item.isActive
          ? AppIcons.kSlectedMarkerIcon
          : AppIcons.kUnSlectedMarkerIcon,
      centerIcon: AppIcons.kTestIcon,
      markerSize: markerSize,
      centerSize: centerSize,
    );

    markers.add(
      Marker(
        markerId: MarkerId(item.id),
        position: item.location,
        icon: icon,
        onTap: () {
          for (var place in places) {
            place.isActive = false;
          }

          item.isActive = true;

          polylines.clear();
          polylines.add(
            Polyline(
              polylineId: const PolylineId("route"),
              width: 1,
              color: const Color(0xFFD2B48C),
              points: [userLocation, item.location],
            ),
          );

          loadMarkers(places, controller, markers, polylines, setState);
        },
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
  setState(() {});
}
