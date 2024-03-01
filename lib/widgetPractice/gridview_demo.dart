import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({super.key});

  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  var items = [1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          body: GridView.extent(

            maxCrossAxisExtent: 200.0, // maximum item width
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 8.0, // spacing between columns
            padding: const EdgeInsets.all(8.0), // padding around the grid
            
            children: items.map((item) {
              return Container(
                color: Colors.blue, // color of grid items
                child: Center(
                  child: Text(
                    item.toString(),
                    style: const TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              );
            }).toList(),
          ),
    ));
  }
}



/*
      body: GridView.builder(

          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              color: Colors.teal[100],
              child: Center(child: Text("Index ${index+1}")),
            );
          },),

 */
/*
return SafeArea(
        child: Scaffold(
      body: GridView.count(
       addRepaintBoundaries:false ,

        physics:const  BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        children: List.generate(10, (index) {
          return Container(
            color: Colors.teal[100],
            // margin: const EdgeInsets.all(10),
            child: Center(child: Text("Item ${index+1}")),

          );
        }),
          ),
    ));
 */
