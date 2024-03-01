import 'package:flutter/material.dart';

class LimitedBoxDemo extends StatefulWidget {
  const LimitedBoxDemo({super.key});

  @override
  State<LimitedBoxDemo> createState() => _LimitedBoxDemoState();
}

class _LimitedBoxDemoState extends State<LimitedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: UnconstrainedBox(
                alignment: Alignment.center,
                child: LimitedBox(
                    maxHeight: 150,
                    maxWidth: 150,
                    child: Container(
                      color: Colors.red,
                    )
                )
            ),
          ),
        ),
      
      ),
    );
  }
}
