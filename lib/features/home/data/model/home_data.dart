import 'package:arch_team_power/features/home/data/model/place.dart';
import 'package:arch_team_power/features/home/data/model/slider.dart';

class HomeData {
  List<Sliders>? sliders;
  List<Places>? popularPlaces;

  HomeData({this.sliders, this.popularPlaces});

  HomeData.fromJson(Map<String, dynamic> json) {
    if (json['sliders'] != null) {
      sliders = <Sliders>[];
      json['sliders'].forEach((v) {
        sliders!.add(Sliders.fromJson(v));
      });
    }
    if (json['popular_places'] != null &&
        json['popular_places']['original'] != null) {
      popularPlaces = <Places>[];
      var placeData = json['popular_places']['original']['data'];
      if (placeData != null && placeData.length > 0) {
        placeData[0]['places'].forEach((v) {
          popularPlaces!.add(Places.fromJson(v));
        });
      }
    }
  }
}
