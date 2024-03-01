import 'package:flutter/material.dart';
class Animated_Align_demo extends StatefulWidget {
  const Animated_Align_demo({super.key});

  @override
  State<Animated_Align_demo> createState() => _Animated_Align_demoState();
}

class _Animated_Align_demoState extends State<Animated_Align_demo> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                height: 250,
                width: 250,
                color: Colors.green,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Center(child: Container(height: 50,width: 50,decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),))),
                    Padding(
                      padding: const EdgeInsets.all(8.0) +
                          const EdgeInsets.only(left: 5),
                      child: Center(
                        child: AnimatedAlign(
                          alignment: _selected ? const Alignment(-0.02, 0) : const Alignment(-1, -1),
                          // alignment: _selected ? Alignment.center : Alignment.topLeft,
                          duration: const Duration(milliseconds: 800),
                          curve: Curves.ease,
                          child:  Icon(_selected?Icons.account_circle_outlined:Icons.person,size: _selected?35:25),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0) +
                          const EdgeInsets.only(right: 20),
                      child: AnimatedAlign(
                          duration: const Duration(milliseconds: 600),
                          alignment: _selected
                              ? Alignment.topLeft
                              : Alignment.topCenter,
                          curve: Curves.easeIn,
                          child: const Text("Animated Align Demo")),
                    ),

                  ],
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              setState(() {
                _selected = !_selected;
              });
            },
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.red),
              child: const Center(
                  child: Text(
                    "Tap On",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ],
      ),

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
