import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderDemo extends StatefulWidget {
  const AnimatedBuilderDemo({super.key});

  @override
  State<AnimatedBuilderDemo> createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 10))
        ..repeat();
  late final AnimationController _animationController12;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // _animationController.addListener(() { });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedBuilder(
          
          animation: _animationController,
          builder: (context, child) {
            // print("${_animationController.value}");

            return Transform.rotate(
              angle: _animationController.value * 2.0 * math.pi,
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                    color: Colors.yellow,


                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//   Container(
//     width: double.infinity,
//     // height: double.infinity,
//     height: 765,
//     color: Colors.blue,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Container(
//           // width: 400,
//           height: 50,
//           color: Colors.red,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Container(
//                 color: Colors.yellow,
//                 // height: 350,
//                 // width: 50,
//                 child: Row(
//                   children: [
//                     Container(
//                       // width: 50,
//                       // height: 50,
//                       color: Colors.purple,
//                       child: Center(child: Text("Value")),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   )
// ]),
