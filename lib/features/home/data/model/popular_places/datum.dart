import 'image.dart';

class Datum {
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
  List<Image>? images;

  Datum({
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
    this.images,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
    'images': images?.map((e) => e.toJson()).toList(),
  };
}
