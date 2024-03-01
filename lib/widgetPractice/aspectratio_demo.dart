import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AspeactRationDemo extends StatefulWidget {
  const AspeactRationDemo({super.key});

  @override
  State<AspeactRationDemo> createState() => _AspeactRationDemoState();
}

class _AspeactRationDemoState extends State<AspeactRationDemo> {
  @override
  Widget build(BuildContext context) {
    var heights = MediaQuery.of(context).size.height;
    var widths = MediaQuery.of(context).size.width;
        if (kDebugMode) {
          print("$heights  $widths");
        }
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              color: Colors.black,
              // height: 200,
              // width: 250,
              child:const Text("Container"),
            ),
          ),
        ),
      ),
    );
  }
}
