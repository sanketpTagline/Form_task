import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  const StackDemo({super.key});

  @override
  State<StackDemo> createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Stack(
          
          alignment: Alignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 190,
              width: 190,
              color: Colors.green,
            ),
            Container(
              height: 180,
              width: 180,
              color: Colors.blue,
            ),
            Container(
              height: 170,
              width: 170,
              color: Colors.red,
            ),
            Container(
              height: 160,
              width: 160,
              color: Colors.green,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),
            Container(
              height: 140,
              width: 140,
              color: Colors.red,
            ),
            Container(
              height: 130,
              width: 130,
              color: Colors.green,
            ),
            Container(
              height: 120,
              width: 120,
              color: Colors.blue,
            ),
            Container(
              height: 110,
              width: 110,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 90,
              width: 90,
              color: Colors.blue,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.red,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.green,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.green,
            ),
            Container(
              height: 30,
              width: 30,
              color: Colors.blue,
            ),
            Container(
              height: 20,
              width: 20,
              color: Colors.red,
            ),
            Container(
              height: 10,
              width: 10,
              color: Colors.green,
            ),
          ],
        ),
      ),
    ));
  }
}
