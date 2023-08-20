import 'dart:convert';
import 'package:flutter/material.dart';

class Countrys {
  Data data;

  Countrys({
    required this.data,
  });

  factory Countrys.fromJson(Map<String, dynamic> json) {
    debugPrint("countrys ok");
    return Countrys(data: Data.fromJson(json['data']));
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
    };
  }
}

class Data {
  List<Country> countries;

  Data({
    required this.countries,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    debugPrint("data model ok");
    List<dynamic> countryData = json['countries'] as List<dynamic>? ?? [];
    List<Country> countries = countryData.map((e) => Country.fromJson(e)).toList();
    return Data(countries: countries);
  }

  Map<String, dynamic> toJson() {
    return {
      'countries': countries.map((e) => e.toJson()).toList(),
    };
  }
}




class Country {
  String code;
  String name;
  String phone;
  Continent continent;
  String capital;
  String currency;
  String emoji;

  Country({
    required this.code,
    required this.name,
    required this.phone,
    required this.continent,
    required this.capital,
    required this.currency,
    required this.emoji,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    debugPrint("country helper model ok");
    return Country(
      code: json['code']  as String? ?? "",
      name: json['name']  as String? ?? "",
      phone: json['phone']  as String? ?? "",
      continent: Continent.fromJson(json['continent']),
      capital: json['capital']  as String? ?? "",
      currency: json['currency']  as String? ?? "",
      emoji: json['emoji']  as String? ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      'phone': phone,
      'continent': continent.toJson(),
      'capital': capital,
      'currency': currency,
      'emoji': emoji,
    };
  }
}



class Continent {
  String code;
  String name;

  Continent({
    required this.code,
    required this.name,
  });

  factory Continent.fromJson(Map<String, dynamic> json) {
    debugPrint("continent helper  model ok");
    return Continent(
      code: json['code'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
    };
  }
}

