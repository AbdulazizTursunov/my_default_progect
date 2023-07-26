
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/universal_data.dart';
import '../model/user_model.dart';

class ApiProvider{

   Future<UniversalData> getUserInfo () async {
    
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/albums");

    try{
      http.Response response = await http.get(uri);

      if(response.statusCode == 200){
        return UniversalData(data:(jsonDecode(response.body) as List?)?.map((e) =>  UserModel.fromJson(e)).toList());
      }
      return UniversalData(error: response.body);
    }
    catch(err){
      return UniversalData(error: "errorga tushdin");
    }
  }
}
