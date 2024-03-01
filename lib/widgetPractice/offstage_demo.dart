import 'package:flutter/material.dart';

class OffStageDemo extends StatefulWidget {
  const OffStageDemo({super.key});

  @override
  State<OffStageDemo> createState() => _OffStageDemoState();
}

class _OffStageDemoState extends State<OffStageDemo> {
  bool _offstage = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Offstage(
              offstage: _offstage,
              child: const FlutterLogo(
                size: 150.0,
              ),
            ),
            ElevatedButton(
              child: const Text('Toggle Offstage Value'),
              onPressed: () {
                setState(() {
                  _offstage = !_offstage;
                });
              },
            ),
          ],
        ),
      ),
    ));
  }
}
