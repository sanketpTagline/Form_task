// To parse this JSON data, do
//
//     final computerObject = computerObjectFromJson(jsonString);

import 'dart:convert';

ComputerObject computerObjectFromJson( str) => ComputerObject.fromJson(str);

String computerObjectToJson(ComputerObject data) => json.encode(data.toJson());

class ComputerObject {
  String id;
  String name;
  DateTime createdAt;
  Data data;

  ComputerObject({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.data,
  });

  factory ComputerObject.fromJson(Map<String, dynamic> json) => ComputerObject(
    id: json["id"],
    name: json["name"],
    createdAt: DateTime.parse(json["createdAt"]),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "createdAt": createdAt.toIso8601String(),
    "data": data.toJson(),
  };
}

class Data {
  int year;
  double price;
  String cpuModel;
  String hardDiskSize;

  Data({
    required this.year,
    required this.price,
    required this.cpuModel,
    required this.hardDiskSize,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    year: json["year"],
    price: json["price"]?.toDouble(),
    cpuModel: json["CPU model"],
    hardDiskSize: json["Hard disk size"],
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "price": price,
    "CPU model": cpuModel,
    "Hard disk size": hardDiskSize,
  };
}
