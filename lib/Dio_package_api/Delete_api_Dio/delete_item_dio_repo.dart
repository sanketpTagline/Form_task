import 'package:dio/dio.dart';

import '../../http_package_api/Delete_api_call/delete_api_model.dart';

class ItemDeleteDio
{
 Future<DeleteItem?> updateApiData()
  async {
    Dio dio = Dio();

    try {
      Response response = await dio.delete("https://dummy.restapiexample.com/api/v1/delete/2");

      if (response.statusCode == 200) {

        var item = DeleteItem.fromJson(response.data);

        return item;
      }
    } catch (e) {
    print(e.toString());
    }
    return null;
  }
}