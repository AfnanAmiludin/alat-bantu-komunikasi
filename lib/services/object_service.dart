import 'dart:convert';
import 'package:tugas_akhir/models/object.dart';
import 'package:http/http.dart' as http;

class ObjectService {
  static const String baseUrl = 'http://127.0.0.1:8000/api';

  static Future<List<Object>> fetchObjects() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/object'));
      final body = response.body;
      final result = jsonDecode(body);

      List<Object> objects = List<Object>.from(result['data'].map(
        (object) => Object.fromJson(object),
      ));
      return objects;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
