import 'dart:convert';
import 'package:tugas_akhir/models/object.dart';
import 'package:dio/dio.dart';
import 'package:tugas_akhir/models/sentence.dart';
import 'package:tugas_akhir/models/subject.dart';

class ObjectService {
  static String baseUrl = 'http://10.0.2.2:8000/api';
  static final dio = Dio();

  static Future<ObjectsModel> getAllObjects() async {
    var response = await dio.get(baseUrl + '/object');

    if (response.statusCode == 200) {
      print(response.data);
      var data = ObjectsModel.fromJson(response.data);
      return data;
    } else {
      throw Exception("Gagal Terhubung ke Server");
    }
  }

  static Future<SubjectsModel> getAllSubject() async {
    var response = await dio.get(baseUrl + '/subject');

    if (response.statusCode == 200) {
      print(response.data);
      var data = SubjectsModel.fromJson(response.data);
      return data;
    } else {
      throw Exception("Gagal Terhubung ke Server");
    }
  }

  static Future<SentencesModel> getAllSentence() async {
    var response = await dio.get(baseUrl + '/sentence');

    if (response.statusCode == 200) {
      print(response.data);
      var data = SentencesModel.fromJson(response.data);
      return data;
    } else {
      throw Exception("Gagal Terhubung ke Server");
    }
  }
}
