// To parse this JSON data, do
//
//     final formData = formDataFromJson(jsonString);

import 'dart:convert';

FormData formDataFromJson(String str) => FormData.fromJson(json.decode(str));

String formDataToJson(FormData data) => json.encode(data.toJson());

class FormData {
  String name;
  String phoneNumber;
  String birthDate;
  String city;
  String hobbies;
  String gender;
  List<bool> work;

  FormData({
    required this.name,
    required this.phoneNumber,
    required this.birthDate,
    required this.city,
    required this.hobbies,
    required this.gender,
    required this.work,
  });

  factory FormData.fromJson(Map<String, dynamic> json) => FormData(
    name: json["Name"],
    phoneNumber: json["PhoneNumber"],
    birthDate: json["BirthDate"],
    city: json["City"],
    hobbies: json["hobbies"],
    gender: json["Gender"],
    work: List<bool>.from(json["Work"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "Name": name,
    "PhoneNumber": phoneNumber,
    "BirthDate": birthDate,
    "City": city,
    "hobbies": hobbies,
    "Gender": gender,
    "Work": List<dynamic>.from(work.map((x) => x)),
  };
}
