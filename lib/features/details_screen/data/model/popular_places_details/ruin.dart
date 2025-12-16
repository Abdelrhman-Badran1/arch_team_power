class Ruin {
  int? id;
  String? name;
  String? description;
  String? image;
  String? mapPhoto;
  String? type;
  String? typeLabel;
  String? location;
  String? governorateName;
  dynamic regionName;
  double? rate;
  int? totalReviews;
  int? totalComments;
  bool? isFavorite;
  dynamic distance;
  dynamic distanceUnit;
  double? lat;
  double? lng;
  String? workDate;
  String? status;
  String? statusEn;
  bool? isClosed;
  String? openingHours;
  bool? hasVr;
  bool? hasAudioGuide;

  Ruin({
    this.id,
    this.name,
    this.description,
    this.image,
    this.mapPhoto,
    this.type,
    this.typeLabel,
    this.location,
    this.governorateName,
    this.regionName,
    this.rate,
    this.totalReviews,
    this.totalComments,
    this.isFavorite,
    this.distance,
    this.distanceUnit,
    this.lat,
    this.lng,
    this.workDate,
    this.status,
    this.statusEn,
    this.isClosed,
    this.openingHours,
    this.hasVr,
    this.hasAudioGuide,
  });

  factory Ruin.fromJson(Map<String, dynamic> json) => Ruin(
    id: json['id'] as int?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    image: json['image'] as String?,
    mapPhoto: json['map_photo'] as String?,
    type: json['type'] as String?,
    typeLabel: json['type_label'] as String?,
    location: json['location'] as String?,
    governorateName: json['governorate_name'] as String?,
    regionName: json['region_name'] as dynamic,
    rate: (json['rate'] as num?)?.toDouble(),
    totalReviews: json['total_reviews'] as int?,
    totalComments: json['total_comments'] as int?,
    isFavorite: json['is_favorite'] as bool?,
    distance: json['distance'] as dynamic,
    distanceUnit: json['distance_unit'] as dynamic,
    lat: (json['lat'] as num?)?.toDouble(),
    lng: (json['lng'] as num?)?.toDouble(),
    workDate: json['work_date'] as String?,
    status: json['status'] as String?,
    statusEn: json['status_en'] as String?,
    isClosed: json['is_closed'] as bool?,
    openingHours: json['opening_hours'] as String?,
    hasVr: json['has_vr'] as bool?,
    hasAudioGuide: json['has_audio_guide'] as bool?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'image': image,
    'map_photo': mapPhoto,
    'type': type,
    'type_label': typeLabel,
    'location': location,
    'governorate_name': governorateName,
    'region_name': regionName,
    'rate': rate,
    'total_reviews': totalReviews,
    'total_comments': totalComments,
    'is_favorite': isFavorite,
    'distance': distance,
    'distance_unit': distanceUnit,
    'lat': lat,
    'lng': lng,
    'work_date': workDate,
    'status': status,
    'status_en': statusEn,
    'is_closed': isClosed,
    'opening_hours': openingHours,
    'has_vr': hasVr,
    'has_audio_guide': hasAudioGuide,
  };
}
