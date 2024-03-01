import 'package:flutter/foundation.dart';

void main()
{
  A qw = A();
  A qwe = A();
  qw.as = 10;
  if (kDebugMode) {
    print(qw.as);
  print(qwe.as);
  }
  // print("${qw.as == qwe.as}");
}
class A {
  int as = 5;

}




// import 'dart:math';
//
//
// void main() {
//   children c = children();
//   c.m1(13);
//   print("${Colors.yellow}");
//   print('42'.padLeft(5)); // Use a String method.
//
// }
// enum Colors {blue,red, yellow}
//
// class parent {
//   String msg = "Message varaible from the parrent class";
//
//   void m1(int a) => print("The value of a is ${a}");
// }
//
// class children extends parent {
//   @override
//   void m1(int b) {
//     print("value of  b is ${b}");
//     super.m1(12);
//     print("${super.msg}");
//   }
// }
// // class Point
// // {
// //   final double x;
// //   final double y;
// //   final double distance ;
// //
// //   Point(this.x,this.y):distance = sqrt(x*x+y*y) {
// //
// //   }
// // }
// // void main()
// // {
// //   var p = Point(2,  3);
// //   print(p.distance)
// // ;}
//
// // class Vector2D {
// //   final double x;
// //   final double y;
// //
// //   Vector2D(this.x, this.y);
// // }
// //
// // class Vector3D extends Vector2D {
// //   final double z;
// //
// //   Vector3D(super.x, super.y, this.z);
// // }
//
// // const double xOrigin = 0;
// // const double yOrigin = 0;
// //
// // class Point {
// //   final double x;
// //   final double y;
// //
// //   Point(this.x, this.y);
// //
// //   Point.origin()
// //       : x = xOrigin,
// //         y = yOrigin;
// // }
//
// // class Point
// // {
// //   double x,y;
// //   Point(this.x,this.y);
// //
// //   static double distanceBase(Point a, Point b)
// //   {
// //     var dx = a.x -b.x;
// //     var dy = a.y - b.y;
// //     return sqrt(dx *dx + dy*dy);
// //
// //   }
// //
// // }
// // void main()
// // {
// //   var a = Point(1,1);
// //   var b =Point(2,2);
// //   var dis = Point.distanceBase(a,b);
// //   print(dis);
// //
// // }
//
// // void main() {
// //   print(greetBob(person('Kathy')));
// //   print(greetBob(imposter()));
// //
// // ;}
// //
// // class person {
// //   final String _name;
// //
// //   person(this._name);
// //
// //   String greet(String who) => "hello,$who. i am $_name";
// // }
// //
// // class imposter implements person {
// //   String get _name => '';
// //
// //   String greet(String who) => 'Hi $who. Do you know who I am?';
// //
// // }
// // String greetBob(person person) => person.greet('Bob');
// //
// //
