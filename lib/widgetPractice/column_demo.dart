import 'package:flutter/material.dart';

class ColumnDemo extends StatefulWidget {
  const ColumnDemo({super.key});

  @override
  State<ColumnDemo> createState() => _ColumnDemoState();
}

class _ColumnDemoState extends State<ColumnDemo> {

  @override
  Widget build(BuildContext context) {

    return  SafeArea(

      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment. stretch,
          mainAxisSize: MainAxisSize.max,
          verticalDirection: VerticalDirection.down,
          textBaseline: TextBaseline.ideographic,

          children: <Widget>[

            Container(
              color: Colors.red,
              height: 100,
              width: 100,
              child: const Center(child: Text('Widget 1', style: TextStyle(color: Colors.white))),
            ),
            Container(
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
        )
      ),
    );
  }
}

/*
  Row(children: [
              Expanded(child: Container(
                  color: Colors.red,child: const Text("Expanded",))),
              Flexible(child: Container(color: Colors.green,child: const Text("Flexible",))),
            ],),
            Row(children: [
              Expanded(child: Container(
                  color: Colors.red,child: const Text("Expanded",))),
              Expanded(child: Container(color: Colors.green,child: const Text("Expanded",))),
            ],),
            Row(children: [
              Flexible(child: Container(
                  color: Colors.red,child: const Text("Flexible ",))),
              Flexible(child: Container(color: Colors.green,child: const Text("Flexible",))),
            ],),
 */
