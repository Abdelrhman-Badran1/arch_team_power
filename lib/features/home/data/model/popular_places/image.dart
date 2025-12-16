class Image {
  int? id;
  String? image;
  int? order;

  Image({this.id, this.image, this.order});

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json['id'] as int?,
    image: json['image'] as String?,
    order: json['order'] as int?,
  );

  Map<String, dynamic> toJson() => {'id': id, 'image': image, 'order': order};
}
