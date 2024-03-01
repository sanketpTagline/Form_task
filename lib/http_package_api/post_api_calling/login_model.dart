import 'dart:convert';

Auth authFromJson(String str) => Auth.fromJson(json.decode(str));

String authToJson(Auth data) => json.encode(data.toJson());

class Auth {
  int? id;
  String? token;

  Auth({
    required this.id,
    required this.token,
  });

  factory Auth.fromJson(Map<String, dynamic> json) => Auth(
    id: json["id"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "token": token,
  };
}