import 'package:flutter/material.dart';

class Airveys {
  List<DataModel> model;

  Airveys({required this.model});

  factory Airveys.fromJson(Map<String, dynamic> json) {
    return Airveys(
      model: (json["data"] as List?)?.map((e) => DataModel.fromJson(e)).toList() ?? []
    );
  }
}




class DataModel {
  String namePassager;
  List<Airlanes> airlanes;

  DataModel({required this.airlanes, required this.namePassager});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    print("data model");
    return DataModel(
        airlanes: (json["airline"] as List?)?.map((e) => Airlanes.fromJson(e)).toList() ?? [],

        namePassager: json['name'] as String? ?? "");
  }
}




class Airlanes {
  String airName;
  String country;
  String logo;
  String website;

  Airlanes(
      {required this.airName,
      required this.country,
      required this.logo,
      required this.website});

  factory Airlanes.fromJson(Map<String, dynamic> json) {
    print("airlanes ok");
    return Airlanes(
        airName: json['name'] as String? ?? "",
        country: json['country'] as String? ?? "",
        logo: json['logo'] as String? ?? "",
        website: json['website'] as String? ?? "");
  }
}
