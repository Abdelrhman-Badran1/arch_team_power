class Sliders {
  int? id;
  String? image;

  Sliders({this.id, this.image});

  Sliders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }
}
