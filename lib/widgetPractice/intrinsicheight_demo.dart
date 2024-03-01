import 'package:flutter/material.dart';

class InterinsicHeightDemo extends StatefulWidget {
  const InterinsicHeightDemo({super.key});

  @override
  State<InterinsicHeightDemo> createState() => _InterinsicHeightDemoState();
}

class _InterinsicHeightDemoState extends State<InterinsicHeightDemo> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text('Short'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('A bit Longer'),
            ),
            Flexible(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('The Longest text button'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
