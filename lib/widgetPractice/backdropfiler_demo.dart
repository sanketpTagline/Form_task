import 'package:flutter/material.dart';


class BackDropFilterDemo extends StatefulWidget {
  const BackDropFilterDemo({super.key});

  @override
  State<BackDropFilterDemo> createState() => _BackDropFilterDemoState();
}

class _BackDropFilterDemoState extends State<BackDropFilterDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Text('0' * 10000),
          Center(
            child: ClipRect(  // <-- clips to the 200x200 [Container] below
              child: BackdropFilter(
                filter: const ColorFilter.linearToSrgbGamma(),
                child: Container(
                  alignment: Alignment.center,
                  width: 200.0,
                  height: 200.0,
                  child: const Text('Hello World'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
