import 'package:flutter/material.dart';

class ImageDemo extends StatefulWidget {
  const ImageDemo({super.key});

  @override
  State<ImageDemo> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( 
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image.network(

              "https://images.unsplash.com/photo-1504608524841-42fe6f032b4b?q=80&"
                  "w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        ),

        // child: Container(
        //
        //
        //   height: 500,
        //   width: 300,
        //   child: Image.asset("images/pexels-photo-1668928.png",semanticLabel: "This is Image", ),
        // ),
      ),
    );
  }
}
