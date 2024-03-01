import 'dart:convert';

import 'package:http/http.dart'as http;

import 'itemproduct_model.dart';
class ItemUpdated {
  Future<ItemUpdate?> updateApiData(map) async
  {

    var url = Uri.parse("https://dummyjson.com/products/1");

    var response = await http.put(url, body: jsonEncode(map),);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {

      var itemUpdate = itemUpdateFromJson(response.body );

      return itemUpdate;
    }
    return null;
  }
}