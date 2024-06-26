// To parse this JSON data, do
//
//     final objectsModel = objectsModelFromJson(jsonString);

import 'dart:convert';

ObjectsModel objectsModelFromJson(String str) =>
    ObjectsModel.fromJson(json.decode(str));

String objectsModelToJson(ObjectsModel data) => json.encode(data.toJson());

class ObjectsModel {
  String message;
  List<ObjectModel> data;

  ObjectsModel({
    required this.message,
    required this.data,
  });

  factory ObjectsModel.fromJson(Map<String, dynamic> json) => ObjectsModel(
        message: json["message"],
        data: List<ObjectModel>.from(
            json["data"].map((x) => ObjectModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ObjectModel {
  int id;
  String name;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  String imageUrl;

  ObjectModel({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.imageUrl,
  });

  factory ObjectModel.fromJson(Map<String, dynamic> json) => ObjectModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "image_url": imageUrl,
      };
}
