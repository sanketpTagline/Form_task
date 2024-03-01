import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:untitled/http_package_api/patch_api_calling_http/patch_model.dart';


class PatchJob
{
  Dio dio = Dio();

 Future<JobModel?> patchJobApi(Map data)
  async {

    try {
      var url = Uri.parse('https://reqres.in/api/users/2');
      var response = await http.patch(url,body: data);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if(response.statusCode == 200)
        {
          var jobDetails = jobModelFromJson(response.body);

          return jobDetails;
        }
    }  catch (e) {
      if(kDebugMode)
        {
          print(e.toString());
        }

    }
    return null;

  }

 Future<JobModel?> patchJobApiDio(Map data) async
  {

    try {
      final response = await dio.patch("https://reqres.in/api/users/2",data: data);
      if (kDebugMode) {
        print(response.statusCode);
        print(response.data);
      }
      if(response.statusCode == 200)
        {
          var jobDetails = JobModel.fromJson(response.data);


          return jobDetails;
        }
    }  catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }

}