class Places {
  int? id;
  String? name;
  String? description;
  String? image;

  Places({this.id, this.name, this.description, this.image});

  Places.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
  }
}
