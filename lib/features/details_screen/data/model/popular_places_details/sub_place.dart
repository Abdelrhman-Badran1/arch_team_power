import 'image_id.dart';

class SubPlace {
  int? id;
  String? name;
  String? description;
  String? image;
  String? mapPhoto;
  String? location;
  String? governorateName;
  dynamic regionName;
  bool? isFavorite;
  dynamic distance;
  dynamic distanceUnit;
  double? lat;
  double? lng;
  String? workDate;
  List<Image>? images;
  int? order;
  bool? isActive;

  SubPlace({
    this.id,
    this.name,
    this.description,
    this.image,
    this.mapPhoto,
    this.location,
    this.governorateName,
    this.regionName,
    this.isFavorite,
    this.distance,
    this.distanceUnit,
    this.lat,
    this.lng,
    this.workDate,
    this.images,
    this.order,
    this.isActive,
  });

  factory SubPlace.fromJson(Map<String, dynamic> json) => SubPlace(
    id: json['id'] as int?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    image: json['image'] as String?,
    mapPhoto: json['map_photo'] as String?,
    location: json['location'] as String?,
    governorateName: json['governorate_name'] as String?,
    regionName: json['region_name'] as dynamic,
    isFavorite: json['is_favorite'] as bool?,
    distance: json['distance'] as dynamic,
    distanceUnit: json['distance_unit'] as dynamic,
    lat: (json['lat'] as num?)?.toDouble(),
    lng: (json['lng'] as num?)?.toDouble(),
    workDate: json['work_date'] as String?,
    images: (json['images'] as List<dynamic>?)
        ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
        .toList(),
    order: json['order'] as int?,
    isActive: json['is_active'] as bool?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'image': image,
    'map_photo': mapPhoto,
    'location': location,
    'governorate_name': governorateName,
    'region_name': regionName,
    'is_favorite': isFavorite,
    'distance': distance,
    'distance_unit': distanceUnit,
    'lat': lat,
    'lng': lng,
    'work_date': workDate,
    'images': images?.map((e) => e.toJson()).toList(),
    'order': order,
    'is_active': isActive,
  };
}
