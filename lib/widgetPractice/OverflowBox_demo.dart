
import 'package:flutter/material.dart';

class OverflowBoxDemo extends StatefulWidget {
  const OverflowBoxDemo({super.key});

  @override
  State<OverflowBoxDemo> createState() => _OverflowBoxDemoState();
}

class _OverflowBoxDemoState extends State<OverflowBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       const Text("Text"),
        Container(
          height: 100,
          width: 100,
          color: Theme.of(context).colorScheme.secondaryContainer,
          child: const OverflowBox(
            maxWidth: 200,
            maxHeight: 200,

            child: FlutterLogo(size: 200),
          ),
        )
      ],),
    ),));
  }
}
