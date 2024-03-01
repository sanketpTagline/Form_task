import 'package:flutter/material.dart';

class RawDemo extends StatefulWidget {
  const RawDemo({super.key});

  @override
  State<RawDemo> createState() => _RawDemoState();
}

class _RawDemoState extends State<RawDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
              child: const Center(child: Text('Widget 1', style: TextStyle(color: Colors.white))),
            ), Container(
              color: Colors.green,
              height: 100,
              width: 100,
              child: const Center(child: Text('Widget 2', style: TextStyle(color: Colors.white))),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
              child: const Center(child: Text('Widget 3', style: TextStyle(color: Colors.white))),
            ),

          ],
        ),
      ),
    );
  }
}
