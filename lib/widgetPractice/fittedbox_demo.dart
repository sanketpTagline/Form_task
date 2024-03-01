import 'package:flutter/material.dart';

class FittedBoxDemo extends StatefulWidget {
  const FittedBoxDemo({super.key});

  @override
  State<FittedBoxDemo> createState() => _FittedBoxDemoState();
}

class _FittedBoxDemoState extends State<FittedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            color: Colors.black,

            width: 200,
            alignment: Alignment.center,
            child: const FittedBox(child: Text("Valueqqqaaaaaqqqqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiop",style: TextStyle(color: Colors.white),)),
          ),
        ),
      ),
    );
  }
}
