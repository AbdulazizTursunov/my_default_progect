import 'dart:convert';

class CarModelById {
  int id;
  String carModel;
  String logo;
  int establishedYear;
  int averagePrice;
  String description;
  List<String> carPics;

  CarModelById({
    required this.id,
    required this.carModel,
    required this.logo,
    required this.establishedYear,
    required this.averagePrice,
    required this.description,
    required this.carPics,
  });

  factory CarModelById.fromJson(Map<String, dynamic> json) {
    return CarModelById(
      id: json['id'] as int? ?? 0,
      carModel: json['car_mode']as String? ?? "",
      logo: json['logo']as String? ?? "",
      establishedYear: json['established_year']as int? ?? 0,
      averagePrice: json['average_price']as int? ?? 0,
      description: json['description'] as String? ?? "",
      carPics: List<String>.from(json['car_pics'] as List? ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'carModel': carModel,
      'logo': logo,
      'establishedYear': establishedYear,
      'averagePrice': averagePrice,
      'description': description,
      'carPics': carPics,
    };
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}

