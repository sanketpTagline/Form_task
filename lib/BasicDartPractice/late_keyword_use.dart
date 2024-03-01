

import 'package:flutter/foundation.dart';

class Person
{
  late String fullname = _getFullName();
  late String firstName = fullname.split(" ").first;
  late String lastName = fullname.split(" ").last;

  String _getFullName()
  {
    if (kDebugMode) {
      print("this MEthod calling");
    }
  return "John due";
  }

}
void main()

{

  if (kDebugMode) {
    print("Start");
  }
  Person person = Person();
  if (kDebugMode) {
    print(person.fullname);
  print(person.firstName);
  print(person.lastName);
  print("End");
  }
}







// class Person
// {
//   late String name;
//
//   void greet()
//   {
//     print("Hello $name");
//   }
//
// }
//
// void main() {
//   Person person = Person();
//   person.name = "hello good morning";
//   print(person.name);
//   person.greet();
// }

// import 'dart:math';
// import 'dart:developer';

// import 'package:flutter/foundation.dart';
// import 'dart:ui' as ui;
// import 'dart:developer';

// String provideCountry() {
//   print("Function is called");
//   return "India";
// }
//
// class Person
// {
//   final int age;
//  final String name;
//  late String description = heavyComputation();
//
//   Person(this.age, this.name)
//   {
//       print("constructor is call");
//   }
//
//   String heavyComputation()
//   {
//     print("heavy Computation is called");
//     return "heavy computation";
//   }
// }
//
// void main()
// {
//   Person person = Person(10, "Jophn");
//   print(person.name);
//   print(person.description);
//   print(person.age);
//
// }

// void main() {
//
//   print("Starting ");
//   late String value = provideCountry();
//   print("End");
//   print(value);
// }
