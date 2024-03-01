import 'package:flutter/material.dart';

class GestureDemo extends StatefulWidget {
  const GestureDemo({super.key});

  @override
  State<GestureDemo> createState() => _GestureDemoState();
}

class _GestureDemoState extends State<GestureDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20) +
                const EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              // onTap: () {
              //   _shoeDialog(context);
              //
              //   if (kDebugMode) {
              //     print("Tap on button");
              //   }
              // },
              // onDoubleTap: () {
              //   if (kDebugMode) {
              //     print("Tap on Double click");
              //   }
              // },
              // onLongPress: () {
              //   if (kDebugMode) {
              //     print("Tap on long-press");
              //   }
              // },
              // onTapCancel: () {
              //   if (kDebugMode) {
              //     print("Tap on cancel");
              //   }
              // },
              //

              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                    child: Text(
                  "Show Dialog",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

_shoeDialog(context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("AlertDialog"),
        content: const Text("Hello World"),
        actions: <Widget>[
          TextButton(
            child: const Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
