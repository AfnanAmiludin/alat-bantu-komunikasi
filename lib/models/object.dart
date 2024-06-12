class Object {
  final int id;
  final String name;
  final String image;

  Object({required this.id, required this.image, required this.name});

  factory Object.fromJson(Map<String, dynamic> json) {
    return Object(id: json['id'], name: json['name'], image: json['image']);
  }
}
