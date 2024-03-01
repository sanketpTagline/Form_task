import 'package:dio/dio.dart';
import 'package:untitled/Dio_package_api/Dio_Post_api/computer_model.dart';

class ComputerRepository {
  Future<ComputerObject?> getApidata(Map map) async {
    Dio dio = Dio();
    Response response =
        await dio.post("https://api.restful-api.dev/objects", data: map);

    if (response.statusCode == 200) {
      ComputerObject resp = ComputerObject.fromJson(response.data);
      return resp;
    }
    return null;
  }
}
