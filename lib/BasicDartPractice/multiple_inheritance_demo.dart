// void main()
// {
//   C c = C();
//   c.getName();
//   c.getNameB();
// }

import 'package:flutter/foundation.dart';

class A
{

  void getName()
  {
  String name = " class a";

  }
}

class B
{
  void getNameB()
  {
    String nameb = " class b";
  }
}


class C implements B,A
{
  @override
  void getName() {
    // TODO: implement getName
    String name = " class a";
    if (kDebugMode) {
      print(name);
    print(name);
    }
  }

  @override
  void getNameB() {
    // TODO: implement getNameB
    String nameB = " class B";
    if (kDebugMode) {
      print(nameB);
    }
  }

}



class Q
{
  getName()
  {
    if (kDebugMode) {
      print("This is class Q");
    }
  }
}

class W extends Q
{
  GetName1()
  {
    if (kDebugMode) {
      print("This is class W");
    }

  }

}

class E extends W
{
  getName2()
  {
   if (kDebugMode) {
     print("This is class e");
   }
  }

}

void main()
{
  E e = E();
  if (kDebugMode) {
    print(e.getName2());
  }
  if (kDebugMode) {
    print(e.GetName1());
  }
  if (kDebugMode) {
    print(e.getName());
  }

}