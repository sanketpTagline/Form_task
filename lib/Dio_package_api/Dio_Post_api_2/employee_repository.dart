import 'package:dio/dio.dart';

import 'employee_model.dart';

class EmployeeRepository {
  Future<Employee?> getApidata(Map map) async {
    Dio dio = Dio();
    Response response =
    await dio.post("https://dummy.restapiexample.com/api/v1/create", data: map);

    if (response.statusCode == 200) {
      Employee resp = Employee.fromJson(response.data);
      return resp;
    }
    return null;
  }
}
