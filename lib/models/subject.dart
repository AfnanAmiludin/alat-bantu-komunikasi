// To parse this JSON data, do
//
//     final subjectsModel = subjectsModelFromJson(jsonString);

import 'dart:convert';

SubjectsModel subjectsModelFromJson(String str) =>
    SubjectsModel.fromJson(json.decode(str));

String subjectsModelToJson(SubjectsModel data) => json.encode(data.toJson());

class SubjectsModel {
  String message;
  List<SubjectModel> data;

  SubjectsModel({
    required this.message,
    required this.data,
  });

  factory SubjectsModel.fromJson(Map<String, dynamic> json) => SubjectsModel(
        message: json["message"],
        data: List<SubjectModel>.from(
            json["data"].map((x) => SubjectModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class SubjectModel {
  int id;
  String name;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  String imageUrl;

  SubjectModel({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.imageUrl,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> json) => SubjectModel(
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
