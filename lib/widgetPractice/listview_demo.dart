import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          height: 50,
          margin: const EdgeInsets.all(20),
          color: Colors.yellow,
          child: const Center(child: Text("Value")),
        );
      })),

      ),
    );
  }
}
/*
     body: ListView(
       // cacheExtent: 20,

          children: [
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
          ],
        ),
 */


/*
  body: ListView.builder(
     physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),

itemCount: 15,


     itemBuilder: (context, index) {
     return Container(
       height: 50,
       color:  Colors.blue,margin: EdgeInsets.all(10),
       child: Center(child: Text("$index"),),
     );
   },),
 */

/*
  body: ListView.separated(

            itemBuilder: (context, index) {
          return Container(
            height: 50,
            color: Colors.yellow,
            margin: EdgeInsets.all(20),
          );
        }, separatorBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          );
        }, itemCount: 25),
 */