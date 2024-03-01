import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen>
     {
  // late TabController _tabController ;
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _tabController = TabController(length: 3, vsync: this);
  // }
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _tabController.dispose();
  // }

       @override
       Widget build(BuildContext context) {
         return DefaultTabController(
           initialIndex: 1,
           length: 3,
           child: Scaffold(
             appBar: AppBar(
               title: const Text('Primary and secondary TabBar'),
               bottom: const TabBar(
                 dividerColor: Colors.transparent,
                 tabs: <Widget>[
                   Tab(
                     text: 'Home',
                     icon: Icon(Icons.home),
                   ),
                   Tab(
                     text: 'Cloud',
                     icon: Icon(Icons.cloud),
                   ),
                   Tab(
                     text: 'Computer',
                     icon: Icon(Icons.computer),
                   ),
                 ],
               ),
             ),
             body: const TabBarView(
               children: <Widget>[
                 NestedTabBar('Home'),
                 NestedTabBar('Cloud'),
                 NestedTabBar('Computer'),
               ],
             ),
           ),
         );
       }
}
    // return DefaultTabController(
    //
    //     initialIndex: 1,
    //     length: 3,
    //     child: Scaffold(
    //       appBar: AppBar(
    //         bottom: const TabBar(
    //           tabs: [
    //             Tab(
    //               child: Icon(Icons.home),
    //             ),
    //             Tab(
    //               child: Icon(Icons.cloud),
    //             ),
    //             Tab(
    //               child: Icon(Icons.computer),
    //             ),
    //           ],
    //         ),
    //       ),
    //       body: const TabBarView(children: [
    //         Center(child: Text("This is home")),
    //         Center(child: Text("This is cloud")),
    //         Center(child: Text("This is computer")),
    //       ]),
    //     ));

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Overview'),
            Tab(text: 'Specifications'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('${widget.outerTab}: Overview tab')),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(
                    child: Text('${widget.outerTab}: Specifications tab')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
