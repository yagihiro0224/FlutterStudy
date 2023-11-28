import 'dart:convert';

import 'package:flutter_study/models/data_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://~~~~";
  static const String toDay = "today";
  static Future<List<DataModel>> getApiDatas() async {
    List<DataModel> dataModelInstances = [];
    final url = Uri.parse('$baseUrl/$toDay');
    final responce = await http.get(url);
    if (responce.statusCode == 200) {
      final List<dynamic> datas = jsonDecode(responce.body);
      for (var data in datas) {
        dataModelInstances.add(DataModel.fromJson(data));
      }
      return dataModelInstances;
    }
    throw Error();
  }
}
