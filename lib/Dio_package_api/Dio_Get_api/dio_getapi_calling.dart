import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:untitled/Dio_package_api/Dio_Get_api/dio_get_model.dart';

class DioGetApiCalling extends StatefulWidget {
  const DioGetApiCalling({super.key});

  @override
  State<DioGetApiCalling> createState() => _DioGetApiCallingState();
}

class _DioGetApiCallingState extends State<DioGetApiCalling> {
  Quotes? quotes;
  bool _isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getApidata();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Quotes"),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: quotes!.quotes.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(5),
                  child: ListTile(
                    leading: Text("${quotes!.quotes[index].id}"),
                    title: Text(quotes!.quotes[index].quote),
                    subtitle: Align(
                        alignment: Alignment.bottomRight,
                        child: Text("- ${quotes!.quotes[index].author}")),
                  ),
                );
              },
            ),
    ));
  }

  _getApidata() async {
    Dio dio = Dio();
    Response response = await dio.get("https://dummyjson.com/quotes");

    if (response.statusCode == 200) {
      // print(response.data.toString);
      quotes = Quotes.fromJson(response.data);
      setState(() {
        _isLoading = false;
      });
      // print("${quotes!.quotes[0].quote}");
    }
  }
}
