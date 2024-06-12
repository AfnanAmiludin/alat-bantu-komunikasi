// To parse this JSON data, do
//
//     final sentencesModel = sentencesModelFromJson(jsonString);

import 'dart:convert';

SentencesModel sentencesModelFromJson(String str) =>
    SentencesModel.fromJson(json.decode(str));

String sentencesModelToJson(SentencesModel data) => json.encode(data.toJson());

class SentencesModel {
  String message;
  List<SentenceModel> data;

  SentencesModel({
    required this.message,
    required this.data,
  });

  factory SentencesModel.fromJson(Map<String, dynamic> json) => SentencesModel(
        message: json["message"],
        data: List<SentenceModel>.from(
            json["data"].map((x) => SentenceModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class SentenceModel {
  int id;
  String sentence;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  String imageUrl;

  SentenceModel({
    required this.id,
    required this.sentence,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.imageUrl,
  });

  factory SentenceModel.fromJson(Map<String, dynamic> json) => SentenceModel(
        id: json["id"],
        sentence: json["sentence"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sentence": sentence,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "image_url": imageUrl,
      };
}
