import 'package:flutter/material.dart';
import 'package:untitled/Task_Form.dart';
import 'package:untitled/http_package_api/patch_api_calling_http/patch_homepage.dart';
import 'package:untitled/widgetPractice/container_demo.dart';

void main() {
  runApp(
    MaterialApp(
      home:  const FormTask(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              color: Colors.deepPurple,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
          )),
    ),
  );

  // runApp(CupertinoApp(home: CupertinoActionSheet(),debugShowCheckedModeBanner: false,),);

  // final date = DateTime.now();
  // // const date1 = DateTime.now();
  // // A.q = 10;
  // // print(A.q);
  // print(int.parse("25"));
}

class A {
  static int q = 5;
}

class B {
  static int w = 10;
}
