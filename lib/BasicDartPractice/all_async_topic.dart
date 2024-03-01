import 'package:flutter/foundation.dart';

void main() async {
  int? q;
  if (kDebugMode) {
    print(q ?? 5);
  }
// print(await maybeSomethingSweet());
// print(await getMeSomethingBetter());
// print(await getMeSomeFood());
// print(await bye());


// A.a
//  = 10;

  if (kDebugMode) {
    print(A.a);
  }
// print(aqw.b);

// print( Greeting());
//      Future.delayed(Duration(seconds: 4),).then((value) async {
//
//   print(await  maybeSomethingSweet());
//   Future.delayed(Duration(seconds: 2)).then((value) async {
//     print(await getMeSomethingBetter());
//
//   });
//      });
//
// print(await getMeSomeFood());
  // maybeSomethingSweet().then((value) async {
  //   print(value);
  //   print(await bye());
  // });
}

class A {
  static final int a = 10;
  static const int b = 10;
}

Future<String> getMeSomeFood() async {
  await Future.delayed(const Duration(seconds: 2));

  return "An Apple";
}

Future<String> getMeSomethingBetter() async {
  await Future.delayed(const Duration(seconds: 2));

  return "a burger?";
}

Future<String> maybeSomethingSweet() async {
  await Future.delayed(const Duration(seconds: 2));

  return "a chocolate cake!!";
}

Future<String> bye() async {
  await Future.delayed(const Duration(seconds: 2));

  return "See you soon! :)";
}

String Greeting() {
  return "Hello! How are you,sir ?";
}
