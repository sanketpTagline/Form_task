import 'package:flutter/foundation.dart';

Future<void> main()
async {
  if (kDebugMode) {
    print("starting");
  }
   // await printNumber();
   getData();
if (kDebugMode) {
  print("Ending");
}
}


void getData() async {
  try {
    String data =await middleName();
    if (kDebugMode) {
      print(data);
    }
  }  catch (e) {
    if (kDebugMode) {
      print("some error $e");
    }

  }

}

Future<String>  middleName()
{
  return Future.delayed(const Duration(seconds: 3),()=> "hello");
}


Future<void> printNumber()
async {
  Future.delayed(const Duration(seconds: 3),(){

    for(int i=0;i<=10;i++)
      {
    if (kDebugMode) {
      print(i);
    }

      }

  },);
}