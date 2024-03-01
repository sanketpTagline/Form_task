import 'package:untitled/http_package_api/Delete_api_call/delete_api_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
class ItemDelete
{
  Future<DeleteItem?> updateApiData() async
  {

    var url = Uri.parse("https://dummy.restapiexample.com/api/v1/delete/2");

    var response = await http.delete(url);
   if(kDebugMode)
     {
       print('Response status: ${response.statusCode}');
       print('Response body: ${response.body}');
     }

    if (response.statusCode == 200) {

      var itemUpdate = deleteItemFromJson(response.body );

      return itemUpdate;
    }
    return null;
  }
}