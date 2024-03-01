import 'package:flutter/material.dart';

class DismissableDemo extends StatefulWidget {
  const DismissableDemo({super.key});

  @override
  State<DismissableDemo> createState() => _DismissableDemoState();
}

class _DismissableDemoState extends State<DismissableDemo> {
  final items = List<String>.generate(20, (index) => "Item ${index + 1}");
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:  ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
        final item = items[index];
        return Dismissible(
          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });
            ScaffoldMessenger.of(context).showSnackBar( const SnackBar(content: Text("item dismissible")));
          },
         background: Container(color: Colors.red,),

          
          key: Key(item),
          child: ListTile(
            title: Text(items[index]),
          ),
        );
      },),
    ));

  }
}
