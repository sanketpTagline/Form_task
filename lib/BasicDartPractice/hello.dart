// void misbehave() {
//   try {
//     dynamic foo = true;
//     print(foo++); // Runtime error
//   } catch (e) {
//     print('misbehave() partially handled ${e.runtimeType}.');
//     rethrow; // Allow callers to see the exception.
//   }
// }


import 'dart:math';

import 'package:flutter/foundation.dart';

void main() {
  var p = const Point(2, 2);
  assert(p.y == 2);

  double distance  = p.distanceTo(const Point(6, 2));
  if (kDebugMode) {
    print(distance);
  }
  //
  // try {
  //   misbehave();
  // } catch (e) {
  //   print('main() finished handling ${e.runtimeType}.');
  // }


  // int? a;


  // int b = 5;
  // b= a??5;
  // print(b);
// num x = 5.2;
// int a =5;
// int b =10;
// // a++;
// print("${(a++) + 4}");
// print(a);
// print("${(++b) + 4} ");
// int c = 5;
// print("${c == ++a}");
// int? q;
// int? w;
//
// print(q ==w );



// var record = ("a",a:true,23,b:false,20,"b");
// print(record.$1);
// print(record.a);
// print(record.$4);

// List list = [1,2,3,4,5,6,7,8,];
//
// List list2 = [ 0 ,...list];
// print(list2);

  // var names = <String>[];
  // names.addAll(['Seth', 'Kathy', 'Lars']);
  // print(names is List<String>); // true

  // var (a,b) = (1,2);
  // (b,a) = (a,b);
  // print((a,b));

// var list  = [1,2,3];
//  var [a,b,c] = list;
//   print(a + b + c);
//   print([a,b,c].runtimeType);
//   var pair = (16,02);
//
//   switch (pair) {
//     case (int a, int b):
//       if (a > b) print('First element greater');
//   // If false, prints nothing and exits the switch.
//     case (int a, int b) when a > b:
//     // If false, prints nothing but proceeds to next case.
//       print('First element greater');
//     case (int a, int b):
//       print('First element not greater');
//   }
// Map<int,int> run = {
//   7:40,
//   18:35,
//   45:36
// };
//
// for(var MapEntry(key:number,value:age  ) in run.entries)
//   {
//     print('$number number ags is $age');
//
//   }

//   var message = StringBuffer('Dart is fun');
//   for (var i = 0; i < 5; i++) {
//     message.write('!');
//   }
//   print(message);

// var choice = [];
//
// for (int i =0;i< 10 ;i++)
//   {
//     choice.add(i);
//   }
// print(choice);
//
// choice.forEach((element) {
//   print(element * 2);
// });
//
// int i =1;
// do
//   {
//     print(i);
//     i++;
//   }
// while(i != 10);

// for(int i =0 ;i <10 ;i++)
//   {
//     if(i == 7)
//       {
//         // print("print7");
//         continue;
//       }
//     print(i);
//   }





 }



