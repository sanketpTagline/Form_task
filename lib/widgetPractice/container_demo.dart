import 'package:flutter/material.dart';

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({super.key});

  @override
  State<ContainerDemo> createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        bottomSheet: Container(
          height: 100,
          width: 200,
          color: Colors.blue,
        ),

        // extendBodyBehindAppBar: true,
        body: Center(
          child:  Container(


                  decoration:const BoxDecoration(
                  color: Colors.blueGrey,
          borderRadius:  BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
          // border: Border(left: BorderSide(color: Colors.red,width: 5),right: BorderSide(color: Colors.red,width: 5)),
                  //   border: Border.all(color: Colors.black,width: 4),gradient: const LinearGradient(colors: [
                  //   Color(0xff020024),
                  //   Color(0xff090979),
                  //   Color(0xff00d4ff),
                  // ]),
                  //   boxShadow:  const [
                  //
                  //     BoxShadow(color: Colors.yellow,offset: const Offset(
                  //       -5.0,
                  //       -5.0,
                  //     ),
                  //       blurRadius: 10.0,
                  //       spreadRadius: 2.0,),
                  //     BoxShadow(color: Colors.red,
                  //       offset: Offset(
                  //         5.0,
                  //         5.0,
                  //       ),
                  //       blurRadius: 10.0,
                  //       spreadRadius: 2.0,),
                  //
                  //   ],

                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,


                  child: const Text("Value",style: TextStyle(color: Colors.white)),
                ),
          // Column(
          //   // mainAxisAlignment: MainAxisAlignment.end,
          //   // crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(20),
          //       child: TextFormField(
          //         decoration: const InputDecoration(border: OutlineInputBorder()),
          //       ),
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }
}


// child: Container(
//             decoration: BoxDecoration(
//               color: Colors.blueGrey,
//                     borderRadius: BorderRadius.circular(25),
//               border: Border.all(color: Colors.black,width: 4),gradient: const LinearGradient(colors: [
//                 Color(0xff020024),
//                 Color(0xff090979),
//                 Color(0xff00d4ff),
//             ]),
//               boxShadow:  const [
//
//                 BoxShadow(color: Colors.yellow,offset: const Offset(
//                   -5.0,
//                   -5.0,
//                 ),
//                   blurRadius: 10.0,
//                   spreadRadius: 2.0,),
//                 BoxShadow(color: Colors.red,
//                   offset: Offset(
//                     5.0,
//                     5.0,
//                   ),
//                   blurRadius: 10.0,
//                   spreadRadius: 2.0,),
//
//               ],
//
//             ),
// alignment: Alignment.center,
//             height: 200,
//             width: 200,
//             child: const Text("Value",style: TextStyle(color: Colors.white)),
//           ),

