import 'package:flutter/material.dart';

class BaseLineDemo extends StatefulWidget {
  const BaseLineDemo({super.key});

  @override
  State<BaseLineDemo> createState() => _BaseLineDemoState();
}

class _BaseLineDemoState extends State<BaseLineDemo> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.lightGreen,
                    size: 20,
                  ),
                  Text(
                    "17:59",
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Quicksand',
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
      
              SizedBox(width: 5),
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Text("mm:ss",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      color: Colors.green,
                    )),
              ),
      
      
            ],
          ),
        ),
      ),
    );
  }
}
