  import 'dart:convert';


  DeleteItem deleteItemFromJson(String str) => DeleteItem.fromJson(json.decode(str));

  String deleteItemToJson(DeleteItem data) => json.encode(data.toJson());

  class DeleteItem {
  String status;
  String data;
  String message;

  DeleteItem({
  required this.status,
  required this.data,
  required this.message,
  });

  factory DeleteItem.fromJson(Map<String, dynamic> json) => DeleteItem(
  status: json["status"],
  data: json["data"],
  message: json["message"],
  );

  Map<String, dynamic> toJson() => {
  "status": status,
  "data": data,
  "message": message,
  };
  }

