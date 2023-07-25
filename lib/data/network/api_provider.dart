
import 'dart:convert';

import '../model/data_model.dart';
import '../model/universal_data.dart';
import 'package:http/http.dart' as http;

class ApiProvider{

  static Future<UniversalData> getInfoPasssegarInfoByPage ({ required int page}) async {
    Uri uri = Uri.parse("https://api.instantwebtools.net/v1/passenger?page=2&size=$page");
    try{
      http.Response response = await http.get(uri);
      if(response.statusCode == 200){
        return UniversalData(data: Airveys.fromJson(jsonDecode(response.body)));
      }
      return UniversalData(error: response.body);
    }catch(err){
      return UniversalData(error: "errorga tushdin");
    }
  }
}