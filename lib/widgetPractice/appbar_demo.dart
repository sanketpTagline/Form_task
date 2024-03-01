import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({super.key});

  @override
  State<AppBarDemo> createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              excludeHeaderSemantics: true,
              foregroundColor: Colors.red,
              actions: const [
                Icon(Icons.login),
                SizedBox(
                  width: 10,
                ),
              ],
              leading: const Icon(Icons.line_style),
              title: const Text("TabBar", style: TextStyle(color: Colors.white)),
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.deepPurple)),
    );
  }
}
