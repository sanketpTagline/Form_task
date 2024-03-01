
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransfromDemo extends StatefulWidget {
  const TransfromDemo({super.key});

  @override
  State<TransfromDemo> createState() => _TransfromDemoState();
}

class _TransfromDemoState extends State<TransfromDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child:Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ColoredBox(
              color: Colors.black,
              child: Transform(
                alignment: Alignment.topRight,
                transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: const Color(0xFFE8581C),
                  child: const Text('Apartment for rent!'),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Transform.rotate(
              angle: math.pi / 4,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Rotation',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontWeight: FontWeight.bold, // Bold text
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            ColoredBox(

              color: Colors.black,
              child: Transform(
                transform: Matrix4.skew(-0.2, 0.0), // Apply horizontal skew
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange, // Orange container
                  child: const Center(
                    child: Text(
                      'Skewing', // Text label
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        )
        ,
      ),
    ));
  }
}


