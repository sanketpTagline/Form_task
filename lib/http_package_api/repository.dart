import 'package:flutter/foundation.dart';
import 'package:untitled/http_package_api/Api_calling/apiConstrain.dart';
import 'package:untitled/http_package_api/Api_calling/firstmodel.dart';
import 'package:http/http.dart'as http;
class Repository
{
  Future<List<UserModel>?> getResponse() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.userEndPoint);
      var response = await http.get(url);
      if (kDebugMode) {
        print('Response status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
      if (response.statusCode == 200) {
        var list = userModelFromJson(response.body);
        // userModel1 = list;
        // setState(() {
        //   isLoading = false;
        // });
        return list;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }
}