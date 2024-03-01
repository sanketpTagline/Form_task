import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  const AlignDemo({super.key});

  @override
  State<AlignDemo> createState() => _AlignDemoState();
}

class _AlignDemoState extends State<AlignDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.grey,


          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Align(

                alignment: Alignment.center,
                child: Text("Text")),
          ),
        ),
      ),
    );
  }
}
