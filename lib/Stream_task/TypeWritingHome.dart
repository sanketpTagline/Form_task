import 'package:flutter/material.dart';

class TypeWritingHome extends StatefulWidget {
  const TypeWritingHome({super.key});

  @override
  State<TypeWritingHome> createState() => _TypeWritingState();
}

class _TypeWritingState extends State<TypeWritingHome> {
  int _currentIndex = 0;
  int _currentCharIndex = 0;
  final List<String> _strings = [
    "A paragraph can be written "
        // "on various topics. For example, a student of Class 1–3 would write a paragraph on topics like ‘A Cow’, ‘My School’, ‘My Mother’, etc. With classes, the topics may vary, and when writing for yourself, the topics can be anything that comes to your mind. "
        // "Check the various paragraph writing topics provided below and refer to the paragraph writing samples for a better understanding of the writing style.Most paragraphs contain between three and five sentences, but there are plenty of exceptions. Different types of paragraphs have different numbers of sentences, like those in narrative writing, in particular, where single-sentence paragraphs are common Likewise, the number of sentences in a paragraph can change based on the style of the writer. Some authors prefer longer, more descriptive paragraphs, while other authors prefer shorter, faster-paced paragraphs."
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: _typeAnimation, child: const Icon(Icons.play_arrow)),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                _strings[_currentIndex].substring(0, _currentCharIndex),
                style: const TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    ));
  }

  void _typeAnimation() {
    if(mounted)
      {
        setState(() {

          if (_currentCharIndex < _strings[_currentIndex].length) {
            _currentCharIndex++;
          } else {
            _currentIndex = (_currentIndex + 1) % _strings.length;
            _currentCharIndex = 0;
          }
        });
      }


    Future.delayed(const Duration(seconds: 1), () {
      _typeAnimation();
    });
  }
}
