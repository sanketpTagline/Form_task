import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatefulWidget {
  const StreamDemo({super.key});

  @override
  State<StreamDemo> createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {



  StreamController controller = StreamController();
  // StreamController controller = StreamController.broadcast();
  late StreamSubscription streamSubscription;
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;
  int _currentCharIndex = 0;
  final List<String> _strings = [
    "A paragraph can be written on various topics. For example, a student of Class 1–3 would write a paragraph on topics like ‘A Cow’, ‘My School’, ‘My Mother’, etc. With classes, the topics may vary, and when writing for yourself, the topics can be anything that comes to your mind. "
        "Check the various paragraph writing topics provided below and refer to the paragraph writing samples for a better understanding of the writing style.Most paragraphs contain between three and five sentences, but there are plenty of exceptions. Different types of paragraphs have different numbers of sentences, like those in narrative writing, in particular, where single-sentence paragraphs are common Likewise, the number of sentences in a paragraph can change based on the style of the writer. Some authors prefer longer, more descriptive paragraphs, while other authors prefer shorter, faster-paced paragraphs."
        "Check the various paragraph writing topics provided below and refer to the paragraph writing samples for a better understanding of the writing style.Most paragraphs contain between three and five sentences, but there are plenty of exceptions. Different types of paragraphs have different numbers of sentences, like those in narrative writing, in particular, where single-sentence paragraphs are common Likewise, the number of sentences in a paragraph can change based on the style of the writer. Some authors prefer longer, more descriptive paragraphs, while other authors prefer shorter, faster-paced paragraphs."
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.stream.listen((event) {
      print(event);
    });

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      floatingActionButton:
          FloatingActionButton(onPressed: () {


          }, child: const Icon(Icons.add)),
      body: Column(
        children: [
          StreamBuilder<dynamic>(

              stream: getRandomNumber(),
              builder: (context, snapshot) {

                if(snapshot.hasData)
                  {
                    return Container(
                      height: 650,
                      width: 400,
                      color: Colors.grey,
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(20),
                      child: ListView.builder(
                        controller: _scrollController,
                        shrinkWrap: true,
                        itemCount: 1,
                          itemBuilder: (context, index) {
                        return ListTile(

                          title:  Text(_strings[_currentIndex].substring(0, snapshot.data),style: const TextStyle(fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                        );
                      },),
                    );
                  }
                else
                  {
                    return const SizedBox();
                  }
              }),
        ],
      ),
    ));
  }

  Stream getRandomNumber() async* {
    

    _currentIndex = 0;
    _currentCharIndex = 0;
    while (_currentCharIndex < _strings[_currentIndex].length) {

      await Future.delayed(const Duration(milliseconds: 10));
      controller.sink.add(_strings[_currentIndex].substring(0, _currentCharIndex));
      yield _currentCharIndex++;

    }

  }
}

// void main() async{
//
//   final val = getName().asyncExpand((name) => getCharacter(name));
//
//   await for(final re in val){
//     print(re);
//   }
//   //streamData();
//
// }
//
// Stream<String> getCharacter(String name) async*{
//
//   final result = name.split('');
//
//      for(final val in result){
//        await Future.delayed(Duration(seconds: 1));
//       yield val;
//     }
// }
//
// Stream<String> getName() async*{
//
//   yield "gdfmsghmh";
// }
//
//
// Stream<String> getRandomValues() async* {
//   for(int i=0;i<text.length;i++){
//        Future.delayed(Duration(seconds: 1));
//       yield text[i];
//         }
//
// }


/*
import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StreamDemo extends StatefulWidget {
  const StreamDemo({super.key});

  @override
  State<StreamDemo> createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {
  StreamController<double> controller = StreamController();
  // StreamController<double> controller = StreamController.broadcast();
  late StreamSubscription streamSubscription;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                getRandomNumber().listen((event) {
                  print("the random value is : $event ");
                });
                // Stream stream = controller.stream;
                //
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
                controller.add(10);
              },
            ),
            MaterialButton(
              color: Colors.green,
              child: const Text("unSubscribe"),
              onPressed: () {
                streamSubscription.cancel();
              // print("hello");
              },
            ),
          ],
        ),
      ),
    ));
  }
 Stream<double> getRandomNumber() async* {
    final random = Random();

    while (true) {
      Future.delayed(const Duration(seconds: 1));
      yield random.nextDouble();
    }


 }
}

 */