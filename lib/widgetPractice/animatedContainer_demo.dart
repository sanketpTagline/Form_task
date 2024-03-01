import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo>
    with TickerProviderStateMixin {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          height: 50,
          width: _selected ? 50 : 100,
          color: Colors.yellow,
          duration: const Duration(seconds: 1),
          child: _selected
              ? const Center(child: CircularProgressIndicator())
              : const Center(child: Text("Save")),
        ),
      ),
    ));
  }
}

/*
 GestureDetector(
        onTap: () {
          print("tap on ");
          setState((){
            _selected = !_selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            // transform: Matrix4.rotationX(_selected?2:20),
            height: _selected?350:200,
              width: _selected?350:200,
              color: _selected?Colors.deepPurple:Colors.blueAccent,
              duration: const Duration( seconds: 2)),
        ),
      ),
 */
