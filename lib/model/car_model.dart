

import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';

class CarModel {
  List<Datum> data;

  CarModel({
    required this.data,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonData = json['data'] as List? ?? [];
    List<Datum> data = jsonData.map((e) => Datum.fromJson(e)).toList();
    return CarModel(data: data);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}



class Datum {
  int id;
  String carModel;
  int averagePrice;
  String logo;
  int establishedYear;

  Datum({
    required this.id,
    required this.carModel,
    required this.averagePrice,
    required this.logo,
    required this.establishedYear,
  });

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json['id'] as int? ?? 0,
      carModel: json['car_model'] as String? ?? "",
      averagePrice: json['average_price'] as int? ?? 0,
      logo: json['logo'] as String? ?? "",
      establishedYear: json['established_year'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'carModel': carModel,
      'averagePrice': averagePrice,
      'logo': logo,
      'establishedYear': establishedYear,
    };
  }
}



