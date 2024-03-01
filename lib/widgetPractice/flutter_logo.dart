import 'package:flutter/material.dart';

class PracticeLogo extends StatefulWidget {
  const PracticeLogo({super.key});

  @override
  State<PracticeLogo> createState() => _PracticeLogoState();
}

class _PracticeLogoState extends State<PracticeLogo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),

      //without use child show image
      // body: Container(decoration:BoxDecoration(image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2016/07/07/16/46/dice-1502706_640.jpg"))) ),

      //column
      // body: Center(
      //   child: Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 20),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       // crossAxisAlignment: CrossAxisAlignment.start,
      //       // mainAxisSize: MainAxisSize.max,
      //       children: <Widget>[
      //         // FittedBox(child: Text("qwertyuiopqwertyuiopqwertyuiopasdfghjklzxcvbnmasdfghjkqwertyuioasdfghjkzxcvbnm78945612741526378978978978978978978978978978978",)),
      //         // const Text('We move under cover and we move as one'),
      //         // const Text('Through the night, we have one shot to live another day'),
      //         // const Text('We cannot let a stray gunshot give us away'),
      //         // const Text('We will fight up close, seize the moment and stay in it'),
      //         // const Text('It’s either that or meet the business end of a bayonet'),
      //         // const Text('The code word is ‘Rochambeau,’ dig me?'),
      //
      //       ],
      //     ),
      //   ),
      // ),

//placeholder
      // body: Center(
      //   child: Placeholder(color: Colors.black,
      //     fallbackHeight: 50,
      //     fallbackWidth: 50,
      //     strokeWidth: 5,
      //
      //     child: Container(height: 50,width: 50,decoration: const BoxDecoration(color: Colors.blue,shape: BoxShape.circle)),
      //
      //   ),
      // ),

      // Icon widget
      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: <Widget>[
      //       Icon(
      //         Icons.favorite,
      //         color: Colors.pink,
      //         size: 24.0,
      //         semanticLabel: 'Text to announce in accessibility modes',
      //
      //       ),
      //       Icon(
      //         Icons.audiotrack,
      //         color: Colors.green,
      //         size: 30.0,
      //       ),
      //       Icon(
      //         Icons.beach_access,
      //         color: Colors.blue,
      //         size: 36.0,
      //       ),
      //     ],
      //   ),
      // ),

      // flutter Icon
      // body: Center(
      //   child: Container(
      //     height: 200,
      //     width: 200,
      //     child: const FlutterLogo(size: 25,style: FlutterLogoStyle.horizontal,),
      //   ),
      // ),
    );
  }
}
