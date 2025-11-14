import 'dart:async';

import 'package:arch_team_power/features/maps_screen/presentation/models/map_place_model.dart';
import 'package:arch_team_power/features/maps_screen/presentation/screens/methods/load_markers_body_method.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMapWidget extends StatefulWidget {
  const CustomGoogleMapWidget({
    super.key,
    required this.mapStyle,
    required this.markers,
    required this.polylines,
    required this.places,
    required this.controller,
  });

  final String mapStyle;
  final Set<Marker> markers;
  final Set<Polyline> polylines;
  final List<MapPlaceModel> places;
  final Completer<GoogleMapController> controller;

  @override
  State<CustomGoogleMapWidget> createState() => _CustomGoogleMapWidgetState();
}

class _CustomGoogleMapWidgetState extends State<CustomGoogleMapWidget> {
  final Completer<GoogleMapController> controller = Completer();

  String mapStyle = '';
  Set<Marker> markers = {};
  Set<Polyline> polylines = {};

  List<MapPlaceModel> places = [
    MapPlaceModel(id: "1", location: LatLng(29.97529, 31.13755)),
    MapPlaceModel(id: "2", location: LatLng(29.9785, 31.13600)),
    MapPlaceModel(id: "3", location: LatLng(29.97620, 31.13340)),
  ];

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      style: widget.mapStyle,
      initialCameraPosition: const CameraPosition(
        target: LatLng(29.9773, 31.1325),
        zoom: 14.5,
      ),
      zoomControlsEnabled: false,
      markers: widget.markers,
      polylines: widget.polylines,

      onTap: (position) async {
        for (var mapPlace in widget.places) {
          mapPlace.isActive = false;
        }
        widget.polylines.clear();

        await loadMarkers(
          widget.places,
          widget.controller,
          widget.markers,
          widget.polylines,
          setState,
        );
      },

      onMapCreated: (controller) {
        if (!widget.controller.isCompleted) {
          widget.controller.complete(controller);
        }
      },
    );
  }
}
