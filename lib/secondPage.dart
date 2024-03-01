import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool _selected = false;
  bool _enabled = true;
  bool _checkValue = false;
  int? a ;
  int b =5 ;

  int bottomIndex = 0;

  final List<String> cityName = [
    "Ahmadabad",
    "Amreli",
    "Bharuch",
    "Bhavnagar",
    "Bhuj",
    "Dwarka",
    "Gandhinagar",
    "Godhra",
    "Jamnagar",
    "Junagadh",
    "Kandla",
    "Khambhat",
    "Kheda",
    "Mahesana",
    "Morbi",
    "Nadiad",
    "Navsari",
    "Okha",
    "Palanpur",
    "Patan",
    "Porbandar",
    "Rajkot",
    "Surat",
    "Surendranagar",
    "Valsad",
    "Veraval",
  ];

  void _onItemTapped(int index) {
    setState(() {
      bottomIndex = index;
    });
  }

  ListTileTitleAlignment? tileTitleAlignment;
  String dropdownValue = "Ahmadabad";

  @override
  Widget build(BuildContext context) {

    // b=a!;
   //
   // print("${b}");

    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
      fontSize: 15,
    ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Appbar ", style: TextStyle(color: Colors.white)),
        actions: const [
          Icon(
            Icons.logout,
            color: Colors.white,
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_call), label: "Add call"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_card_sharp), label: "Add card"),
        ],
        currentIndex: bottomIndex,
        iconSize: 25,
        backgroundColor: Colors.grey,
        onTap: _onItemTapped,
        elevation: 5,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        autofocus: true,
        tooltip: "This is Floating action button",
        child: const Icon(
          Icons.add,
          color: Colors.deepPurple,
        ),
        onPressed: () {},
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text("Helloqwertyuiopasdfghjklasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiasdfghjkzxcvbnqwiopqwertyuiop",),
          //
          // Row(),
          // Container(
          //
          //
          //   width: 50,
          //   height: 200,
          //   color: Colors.red,
          // ),
          // Container(
          //   width: 50,
          //   height: 200,
          //   color: Colors.red,
          // ),


          Center(
            child: DropdownButton(

              value: dropdownValue,
              items: cityName
                  .map<DropdownMenuItem<String>>(
                      (e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
            ),
          ),
          TextFormField(),

          // Icon Button
          // IconButton(tooltip: "This is IconButton ",onPressed: () {
          //   setState(() {
          //     if (kDebugMode) {
          //       print("This is icon Button");
          //     }
          //   });
          // }, icon: const Icon(Icons.account_balance))

          // TextButton
          // Center(
          //   child: TextButton(style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black,),),onPressed: () {
          //
          //   }, child:const Text("call",style: TextStyle(color: Colors.red,fontSize: 20,),) ),
          // ),

          //ElevatedButton property
          // Center(
          //   child: ElevatedButton(statesController: MaterialStatesController(),style: style,onPressed: () {
          //
          //     if(kDebugMode)
          //       {
          //         print("Tap on Submit button");
          //       }
          //
          //   }, child: Text("Submit")),
          // )

          // Listtile property
          ListTile(
            title: const Text("This is ListTile"),
            autofocus: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            selected: _selected,
            enabled: _enabled,
            onTap: () {
              setState(() {
                _selected = !_selected;
              });
            },
            iconColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.red;
              }
              if (states.contains(MaterialState.selected)) {
                return Colors.green;
              }
              return Colors.black;
            }),
            textColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.red;
              }
              if (states.contains(MaterialState.selected)) {
                return Colors.green;
              }
              return Colors.black;
            }),
            trailing: Switch(
              value: _enabled,
              onChanged: (value) {
                setState(() {
                  _enabled = value;
                });
              },
            ),
            hoverColor: Colors.red,
            leading: const Icon(Icons.person),
          ),
          const SizedBox(
            height: 25,
          ),
          ListTile(
            titleAlignment: tileTitleAlignment,
            leading: Checkbox(
              value: _checkValue,
              onChanged: (value) {
                setState((){
                  _checkValue = !_checkValue;
                });
              },
            ),
            title: const Text("Heading Text"),
            subtitle: const Text(
                "This is subtitel text , and hear we would add title alignement in this subtitle and also check wether title alignment will add or not"),
            trailing: PopupMenuButton(
              onSelected: (ListTileTitleAlignment? value) {
                setState(() {
                  tileTitleAlignment = value;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<ListTileTitleAlignment>>[
                const PopupMenuItem(
                    value: ListTileTitleAlignment.top,
                    child: Text("Top")),
                    const PopupMenuItem(
                    value: ListTileTitleAlignment.titleHeight,
                    child: Text("titleHeight")),
                const PopupMenuItem(
                    value: ListTileTitleAlignment.threeLine,
                    child: Text("ThreeLine")),
                const PopupMenuItem(
                    value: ListTileTitleAlignment.center,
                    child: Text("center")),
                const PopupMenuItem(
                    value: ListTileTitleAlignment.bottom,
                    child: Text("Bottom")),
              ],
            ),
          ),

          // offstage property (use like hide and show widget )
          // Offstage(
          //   offstage: false,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.blue,
          //     child: Icon(Icons.flutter_dash,size: 70,color: Colors.black,),
          //   ),
          // ),

          //limited box
          //    const SizedBox(height: 40,),
          // IntrinsicHeight &IntrinsicWidth

          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     IntrinsicHeight(
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.stretch,
          //         children: [
          //           Container(
          //             color: Colors.blue,
          //             width: 100,
          //             child: Text('Box 1'),
          //           ),
          //           Container(
          //             color: Colors.green,
          //             width: 150,
          //             child: Text('Box 2\nwith multiple lines'),
          //           ),
          //           Container(
          //             color: Colors.orange,
          //             width: 75,
          //             child: Text('Box 3'),
          //           ),
          //         ],
          //       ),
          //     ),
          //    const  SizedBox(height: 20),
          //     IntrinsicWidth(
          //       child: Column(
          //         children: [
          //           Container(
          //             height: 50,
          //             color: Colors.purple,
          //             child: Text('This is a really long text that should wrap to multiple \nlines'),
          //           ),
          //           Container(
          //             height: 50,
          //             color: Colors.yellow,
          //             child: Text('Short \ntext'),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),

          // FractionallySizebox property

          // Container(
          //     height: 250.0,
          //     color: Colors.black,
          //     child: Column(
          //         children: [
          //           Flexible(
          //             child: FractionallySizedBox(
          //               heightFactor: 1, widthFactor: 0.25,
          //               child: Container(color: Colors.orange),
          //             ),
          //           ),
          //
          //           Flexible(
          //             child: FractionallySizedBox(
          //                 heightFactor: .95, widthFactor: .9,
          //                 child: Container(color: Colors.blue)
          //             ),
          //           ),
          //         ]
          //     )
          // ),

          // fitted box property

          // FittedBox(fit: BoxFit.fill,
          //     child: Row(
          //   children: [
          //     Container(
          //       child: const Text("This is widget a"),),
          //     Container(child: Text("This is widget B"),)
          //   ],
          // )),

          // Container

          // Container(
          //   child: const Text("Hello"),
          //   height: 150,
          //   width: 150,
          //   decoration: const BoxDecoration(color: Colors.blue),
          //   transform: Matrix4.rotationZ(2),
          //
          // ),

          //constrainedBox
          // ConstrainedBox(
          //   constraints: const BoxConstraints(
          //     minHeight: 50.0,
          //     minWidth: 50.0,
          //     maxHeight: 100.0,
          //     maxWidth: 100.0,
          //   ),
          //   child: new DecoratedBox(
          //     child: const Text("THis is container,"),
          //     decoration: new BoxDecoration(color: Colors.red),
          //   ),
          // ),

          //Rich Text

          // const Text.rich(
          //   TextSpan(
          //     children: [
          //       TextSpan(
          //           text: "Hello ",
          //           style: TextStyle(fontStyle: FontStyle.italic)),
          //       TextSpan(
          //           text: "World",
          //           style: TextStyle(fontWeight: FontWeight.bold)),
          //       TextSpan(text: "Today", style: TextStyle(fontSize: 25)),
          //     ],
          //   ),
          // ),

          // Align & Center Widget
          // Center(
          //   child: Container(
          //     height: 110.0,
          //     width: 110.0,
          //     color: Colors.blue,
          //     child: Align(
          //       alignment: Alignment.bottomCenter,
          //       child: Text("Hello")
          //     ),
          //   ),
          // ),

          // SizeBox Prpoerty

          // SizedBox(
          //   width: 50,
          //   height: 50,
          //   child: Text("Hello"),
          //
          // ),

          // AspectRation property
          // AspectRatio(
          //   // width/height
          //   aspectRatio: 10/1,
          //   child: Container(
          //     color: Colors.blue,
          //   ),
          // ),

          // Baseline(baseline: , baselineType:TextBaseline.alphabetic),

          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Expanded(
          //       child: GestureDetector(
          //         onTap: () {
          //           if (kDebugMode) {
          //             print("Tap on GestureDetector");
          //           }
          //           Navigator.push(context, MaterialPageRoute(
          //             builder: (context) {
          //               return const ThirdScreen();
          //             },
          //           ));
          //         },
          //         child: Container(
          //           height: 150,
          //           color: Colors.red,
          //           child: const Center(child: Text("GestureDetector")),
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: InkWell(
          //         onTap: () {
          //           if (kDebugMode) {
          //             print("Tap on InkWell");
          //           }
          //           Navigator.push(context, MaterialPageRoute(
          //             builder: (context) {
          //               return const ThirdScreen();
          //             },
          //           ));
          //         },
          //         child: Container(
          //           height: 150,
          //           color: Colors.green,
          //           child: const Center(child: Text("InkWell")),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
