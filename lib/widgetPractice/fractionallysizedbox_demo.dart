
import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatefulWidget {
  const FractionallySizedBoxDemo({super.key});

  @override
  State<FractionallySizedBoxDemo> createState() => _FractionallySizedBoxDemoState();
}

class _FractionallySizedBoxDemoState extends State<FractionallySizedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(

        body: Center(child: FractionallySizedBox(
          widthFactor: .5,
          heightFactor: .2,


          child: DecoratedBox(decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 4)
          ))
          // Container(
          //   color: Colors.black,
          // ),
        )),

      ),
    );
  }
}
