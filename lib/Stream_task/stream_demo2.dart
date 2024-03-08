import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo2 extends StatefulWidget {
  const StreamDemo2({super.key});

  @override
  State<StreamDemo2> createState() => _StreamDemo2State();
}

class _StreamDemo2State extends State<StreamDemo2> {
  StreamController<String> controller = StreamController<String>();
   StreamController _controller = StreamController.broadcast();

  bool isDone = false;
  StreamSubscription? streamSubscription;
  String streamValue = "";

  List<String> stringList = [
    "A paragraph can be written on various topics. For example, a student of Class 1–3 would write a paragraph on topics like ‘A Cow’, ‘My School’, ‘My Mother’, "
        // "etc. With classes, the topics may vary, and when writing for yourself, the topics can be anything that comes to your mind. Check the various paragraph writing topics provided below and refer to the paragraph writing samples for a better understanding of the writing style.Most paragraphs contain between three and five sentences, but there are plenty of exceptions. Different types of paragraphs have different numbers of sentences, like those in narrative writing, in particular, where single-sentence paragraphs are common Likewise, the number of sentences in a paragraph can change based on the style of the writer. Some authors prefer longer, more descriptive paragraphs, while other authors prefer shorter, faster-paced paragraphs."
        // "Check the various paragraph writing topics provided below and refer to the paragraph writing samples for a better understanding of the writing style.Most paragraphs contain between three and five sentences, but there are plenty of exceptions. Different types of paragraphs have different numbers of sentences, like those in narrative writing, in particular, where single-sentence paragraphs are common Likewise, the number of sentences in a paragraph can change based on the style of the writer. Some authors prefer longer, more descriptive paragraphs, while other authors prefer shorter, faster-paced paragraphs."
  ];

  @override
  void initState() {
    addStreamDatas();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.close();
    streamSubscription!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),



      body: Column(
        children: [
          StreamBuilder(
            stream: _controller.stream,
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
        ],
      ),
    ));
  }

  void addStreamDatas() async {
    Stream stream12 = _controller.stream;
   streamSubscription = stream12.listen((event) {
      streamValue += event;
    });
    for (int i = 0; i < stringList.length; i++) {
      for (var i in stringList[i].toString().split('')) {
        await Future.delayed(const Duration(milliseconds: 20));
             _controller.sink.add(i);
      }
    }

    // streamSubscription!.cancel();
    // streamSubscription!.onDone(() {
    //
    // print("done");
    // });
  }


}
