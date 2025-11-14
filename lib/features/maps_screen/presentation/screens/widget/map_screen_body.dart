import 'dart:async';

import 'package:arch_team_power/features/maps_screen/presentation/models/map_place_model.dart';
import 'package:arch_team_power/features/maps_screen/presentation/screens/methods/load_markers_body_method.dart';
import 'package:arch_team_power/features/maps_screen/presentation/screens/widget/custom_google_map_widget.dart';
import 'package:arch_team_power/features/maps_screen/presentation/screens/widget/map_search_text_field.dart';
import 'package:arch_team_power/features/maps_screen/presentation/screens/widget/some_details_about_the_active_location.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreenBody extends StatefulWidget {
  const MapScreenBody({super.key});
  @override
  State<MapScreenBody> createState() => _MapScreenBodyState();
}

class _MapScreenBodyState extends State<MapScreenBody> {
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
  void initState() {
    super.initState();
    loadMapStyle();
    loadMarkers(places, controller, markers, polylines, setState);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomGoogleMapWidget(
          mapStyle: mapStyle,
          markers: markers,
          polylines: polylines,
          places: places,
          controller: controller,
        ),

        MapSearchTextField(),

        if (places.any((placeMarker) => placeMarker.isActive))
          SomeDetailsAboutTheActivePlace(),
      ],
    );
  }

  void loadMapStyle() async {
    final style = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/map/map_style.json');
    setState(() {
      mapStyle = style;
    });
  }
}
