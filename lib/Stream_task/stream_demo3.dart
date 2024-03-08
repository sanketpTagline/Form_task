import 'dart:async';
import 'package:flutter/material.dart';

class StreamDemo3 extends StatefulWidget {
  const StreamDemo3({super.key});

  @override
  State<StreamDemo3> createState() => _StreamDemo3State();
}

class _StreamDemo3State extends State<StreamDemo3> {
  StreamController<int> controller = StreamController<int>();
  // StreamController<double> controller = StreamController.broadcast();
   StreamSubscription? streamSubscription;
  String streamValue = "";

  @override
  void initState() {
    // TODO: implement initState
    streamSubscription =  getRandomNumber().listen((event) {
      streamValue += event.toString();
    });
    super.initState();
  }
  bool isDone = true;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
      resizeToAvoidBottomInset: false,
        floatingActionButton:
              FloatingActionButton(

                  onPressed: () {
                    getRandomNumber().listen((event) {
                    },onDone: () {
                    streamValue += textEditingController.text.toString();
                    // streamValue += "Hello";
                    controller.sink.add(10);
                    },);

                  },
                  child: const Icon(Icons.add, color: Colors.black)),



      body: Column(
        children: [
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    // streamSubscription =getRandomNumber().listen((event) {
                    //   streamValue += event.toString();
                    // });
                    // Stream stream = controller.stream;
                    //
                    // streamSubscription = stream.listen((event) {
                    //   if (kDebugMode) {
                    //     print("Stream value from the controller is : $event");
                    //   }
                    // });

                    // streamSubscription = stream.listen((event) {
                    //   if (kDebugMode) {
                    //     print("Stream value from the controller is : $event");
                    //   }
                    // });
                  },
                  child: const Text("Submit"),
                ),
                MaterialButton(
                  color: Colors.yellow,
                  child: const Text("Emit value"),
                  onPressed: () {
                    streamValue += textEditingController.text.toString();
                    controller.sink.add(10);

                  },
                ),
                MaterialButton(
                  color: Colors.green,
                  child: const Text("unSubscribe"),
                  onPressed: () {
                    streamSubscription!.cancel();
                    // print("hello");
                  },
                ),
              ],
            ),
          ),
          TextFormField(controller:
          textEditingController),
          Center(
            child: StreamBuilder(
              stream: controller.stream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Container(
                  height: 600,
                  width: 400,
                  color: Colors.grey,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(streamValue,
                            style: const TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold)),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }

  Stream<int> getRandomNumber() async* {
    // streamSubscription =getRandomNumber().listen((event) {
    //   streamValue += event.toString();
    // });

    for (int i = 0; i < 200; i++) {
      await Future.delayed(const Duration(milliseconds: 20));
      yield i;
      controller.sink.add(i);
    }
  }
}

// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// // void streamDataSec(String localIndex) async {
// //   StreamController<String> controller = StreamController<String>();
// //   Stream stream = controller.stream;
// //   stream.listen((value) {
// //
// //     streamValue += value;
// //
// //   });
// //   for (var i in localIndex.split('')) {
// //     await Future.delayed(const Duration(milliseconds: 20));
// //     controller.sink.add(i);
// //   }
// // }
//
// class StreamDemo33 extends StatefulWidget {
//   const StreamDemo33({Key? key}) : super(key: key);
//
//   @override
//   State<StreamDemo33> createState() => _StreamDemo33State();
// }
//
// class _StreamDemo33State extends State<StreamDemo33> {
//   final TextEditingController _bufferController = TextEditingController();
//
//   @override
//   void initState() {
//     streamData();
//     super.initState();
//   }
//
//   String streamValue = '';
//   List<String> buffer = [
//  "Frequently Asked Questions on Paragraph Writin What is meant by paragraph writing? A paragraph can be written on various topics depending on the type of topic you wish to write on. You can refer to the topics here or write on topics as per your wish.",
//
//   ];
//
//   // void streamData() async {
//   //   StreamController<String> controller = StreamController<String>();
//   //   Stream stream = controller.stream;
//   //   stream.listen((value) {
//   //     setState(() {
//   //       streamValue += value;
//   //     });
//   //   });
//   //   for (var i in text.split('')) {
//   //     await Future.delayed(const Duration(milliseconds: 20));
//   //     controller.sink.add(i);
//   //   }
//   // }
//
//   // void closeController() {
//   //   controller.close();
//   //   print('object');
//   //
//   //   //controller.stream.listen((e) => print(e));
//   //   if (!controller.hasListener) {
//   //     controller.stream.listen((e) => print(e));
//   //   } else {
//   //     print("Stream has already been listened");
//   //   }
//   //
//   //
//   // }
//
//   // void streamDataSec(String localIndex) async {
//   //   StreamController<String> controller = StreamController<String>();
//   //   Stream stream = controller.stream;
//   //   stream.listen((value) {
//   //
//   //     streamValue += value;
//   //
//   //   });
//   //   for (var i in localIndex.split('')) {
//   //     await Future.delayed(const Duration(milliseconds: 20));
//   //     controller.sink.add(i);
//   //   }
//   // }
//
//   bool isStreamPrinting = false;
//   StreamController<String> controller = StreamController<String>.broadcast();
//
//   void streamData() async {
//     isStreamPrinting = true;
//     Stream stream = controller.stream;
//     stream.listen((value) {
//       print(value);
//       streamValue += value;
//       print(streamValue);
//     });
//     for (int i = 0; i < buffer.length; i++) {
//       for (var i in buffer[i].toString().split('')) {
//         await Future.delayed(const Duration(milliseconds: 20))
//             .then((value) => controller.sink.add(i));
//       }
//     }
//     isStreamPrinting = false;
//     //closeController();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stream Demo'),
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height * 0.77,
//         width: MediaQuery.of(context).size.width,
//         color: Colors.grey[300],
//         padding: const EdgeInsets.all(10),
//         child: SingleChildScrollView(
//             child: StreamBuilder<String>(
//                 stream: controller.stream,
//                 builder: (context, snapshot) {
//                   if (!snapshot.hasData) {
//                     return const SizedBox.shrink();
//                   }
//                   return Text(
//                     streamValue,
//                     style: const TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontFamily: 'Times New Roman',
//                         fontSize: 17),
//                     textAlign: TextAlign.justify,
//                   );
//                 })),
//       ),
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
//         child: Row(
//           children: [
//             Expanded(
//                 child: TextField(
//                   controller: _bufferController,
//                 )),
//             FloatingActionButton(
//                 backgroundColor: Colors.black,
//                 onPressed: () {
//
//                   print(isStreamPrinting);
//                   buffer.add(_bufferController.text);
//                   if (isStreamPrinting) {
//
//                     _bufferController.clear();
//
//                     // print(buffer[3].toString());
//                     // const sk = SnackBar(
//                     //   content: Text('Stream has already been listened to.'),
//                     // );
//                     // ScaffoldMessenger.of(context).clearSnackBars();
//                     // ScaffoldMessenger.of(context).showSnackBar(sk);
//                   } else{
//                     setState(() {
//
//                       streamData();
//                     });
//                   }
//
//                   // print(buffer);print(buffer.length);
//
//
//                   //print(buffer.length);
//                   //controller.close();
//                   // if (!controller.hasListener) {
//                   //   //controller.stream.listen((e) => print('$e-------------------'));
//                   //   controller.add('event');
//                   // } else {
//                   //   print("Stream has already been listened");
//                   // }
//                   // try {
//                   //   streamData(buffer.length - 1);
//                   //   //Stream stream = controller.stream;
//                   // } catch (e) {
//                   //   const sk = SnackBar(
//                   //     content: Text('Stream has already been listened to.'),
//                   //   );
//                   //   ScaffoldMessenger.of(context).clearSnackBars();
//                   //   ScaffoldMessenger.of(context).showSnackBar(sk);
//                   // }
//                 },
//                 child: const Icon(Icons.add, color: Colors.white)),
//           ],
//         ),
//       ),
//     );
//   }
// }
