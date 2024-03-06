
import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StreamDemo2 extends StatefulWidget {
  const StreamDemo2({super.key});

  @override
  State<StreamDemo2> createState() => _StreamDemo2State();
}

class _StreamDemo2State extends State<StreamDemo2> {
  StreamController<String> controller = StreamController<String>();
  // StreamController<double> controller = StreamController.broadcast();
  late StreamSubscription streamSubscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addStreamData();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    // getRandomNumber().listen((event) {
                    //   print("the random value is : $event ");
                    // });
                    Stream stream = controller.stream;

                    streamSubscription = stream.listen((event) {
                      if (kDebugMode) {
                        print("Stream value from the controller is : $event");
                      }
                    });
                  },
                  child: const Text("Submit"),
                ),
                MaterialButton(
                  color: Colors.yellow,
                  child: const Text("Emit value"),
                  onPressed: () {
                    _controller.sink.add(12);
                    // controller.sink.add("Hello");
                    // controller.sink.add("Check the various paragraph writing topics provided below and refer to the paragraph writing samples for a better understanding of the writing style.Most paragraphs contain between three and five sentences, but there are plenty of exceptions. Different types of paragraphs have different numbers of sentences, like those in narrative writing, in particular, where single-sentence paragraphs are common Likewise, the number of sentences in a paragraph can change based on the style of the writer. Some authors prefer longer, more descriptive paragraphs, while other authors prefer shorter, faster-paced paragraphs.");
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
          StreamBuilder(
            // stream: controller.stream,
            stream: _controller.stream,
            builder: (context, snapshot) {
            if(!snapshot.hasData)
              {
                return const Center(child: CircularProgressIndicator());
              }
            return Text(snapshot.data.toString());
          },),
        ],
      ),
    ));
  }
 Stream<double> getRandomNumber() async* {
    final random = Random();

    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield random.nextDouble();
    }


 }
  addStreamData() async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));

      _controller.sink.add(i);
    }
  }
  final StreamController _controller = StreamController();
}

