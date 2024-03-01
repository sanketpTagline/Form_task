

import 'package:flutter/foundation.dart';

Future<int> toDoSomeTask() async {
  await Future.delayed(Duration(seconds: 2));
  return 07;
}

Stream<int> COuntForOneMinutue() async* {
  // int i = 0;
  for (int i = 1; i <= 60; i++) {

   await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  // int result = await toDoSomeTask();
  // print(result);

  await for(int i in COuntForOneMinutue()) {
    if (kDebugMode) {
      print(i);
    }
  }

}
