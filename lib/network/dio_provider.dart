import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../model/car_model.dart';
import '../model/car_model_by_id.dart';
import '../model/countrys_model.dart';
import '../model/universal_data.dart';
import '../utils/constant.dart';

class DioProvider {

  static Future<UniversalData> getCountryInfo(String path) async {
    Dio dio = Dio(BaseOptions(baseUrl: baseUrlCountry));
    try {
      Response response = await dio.get('/$path');
      debugPrint("Bodyyyyyyyy________${response.data}");
      if (response.statusCode == 200) {
        print("Muvofaqqiystli");
        var data = UniversalData(data: Countrys.fromJson(response.data) );
        return data;
      } else {
        debugPrint("response: ${UniversalData(error: "error try")}");
        return UniversalData(error: "error try");
      }
    } catch (error) {
      debugPrint("Error: $error");
      return UniversalData(error: "error!!!");
    }
  }
  
  static Future<UniversalData> getCarInfo(String path) async {
    Dio dio = Dio(BaseOptions(baseUrl: baseUrlCar));
    try {
      Response response = await dio.get('/$path');
      debugPrint("Bodyyyyyyyy________${response.data}");
      if (response.statusCode == 200) {
        print("Muvofaqqiystli");
        var data = UniversalData(data: CarModel.fromJson(response.data) );
        return data;
      } else {
        debugPrint("response: ${UniversalData(error: "error try")}");
        return UniversalData(error: "error try");
      }
    } catch (error) {
      debugPrint("Error: $error");
      return UniversalData(error: "error!!!");
    }
  }


  static Future<UniversalData> getCarInfoById(String path,int id) async {
    Dio dio = Dio(BaseOptions(baseUrl: baseUrlCar));
    try {
      Response response = await dio.get('/$path/$id');
      debugPrint("Bodyyyyyyyy________${response.data}");
      if (response.statusCode == 200) {
        print("Muvofaqqiystli");
        var data = UniversalData(data: CarModelById.fromJson(response.data) );
        return data;
      } else {
        debugPrint("response: ${UniversalData(error: "error try")}");
        return UniversalData(error: "error try");
      }
    } catch (error) {
      debugPrint("Error: $error");
      return UniversalData(error: "error!!!");
    }
  }
}


