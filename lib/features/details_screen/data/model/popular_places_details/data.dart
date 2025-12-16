import 'image_id.dart';
import 'ruin.dart';
import 'sub_place.dart';

class Data {
  int? id;
  String? name;
  String? nameAr;
  String? nameEn;
  String? description;
  String? image;
  String? icon;
  int? order;
  int? ruinsCount;
  int? subPlacesCount;
  List<Ruin>? ruins;
  List<SubPlace>? subPlaces;
  List<Image>? images;

  Data({
    this.id,
    this.name,
    this.nameAr,
    this.nameEn,
    this.description,
    this.image,
    this.icon,
    this.order,
    this.ruinsCount,
    this.subPlacesCount,
    this.ruins,
    this.subPlaces,
    this.images,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json['id'] as int?,
    name: json['name'] as String?,
    nameAr: json['name_ar'] as String?,
    nameEn: json['name_en'] as String?,
    description: json['description'] as String?,
    image: json['image'] as String?,
    icon: json['icon'] as String?,
    order: json['order'] as int?,
    ruinsCount: json['ruins_count'] as int?,
    subPlacesCount: json['sub_places_count'] as int?,
    ruins: (json['ruins'] as List<dynamic>?)
        ?.map((e) => Ruin.fromJson(e as Map<String, dynamic>))
        .toList(),
    subPlaces: (json['sub_places'] as List<dynamic>?)
        ?.map((e) => SubPlace.fromJson(e as Map<String, dynamic>))
        .toList(),
    images: (json['images'] as List<dynamic>?)
        ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'name_ar': nameAr,
    'name_en': nameEn,
    'description': description,
    'image': image,
    'icon': icon,
    'order': order,
    'ruins_count': ruinsCount,
    'sub_places_count': subPlacesCount,
    'ruins': ruins?.map((e) => e.toJson()).toList(),
    'sub_places': subPlaces?.map((e) => e.toJson()).toList(),
    'images': images?.map((e) => e.toJson()).toList(),
  };
}
