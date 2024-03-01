import 'package:flutter/material.dart';

void main()
{
  runApp(const MaterialApp(home:Clock_demo(),));
}

class Clock_demo extends StatelessWidget {
  const Clock_demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Clock"),centerTitle: true),
      body: StreamBuilder(stream:_clock() , builder: (context, AsyncSnapshot<String> snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting)
          {
            return const Center(child: CircularProgressIndicator());
          }
        return Center(
          child: Text(
            snapshot.data!,
            style: const TextStyle(fontSize: 50, color: Colors.blue),
          ),
        );
      },),
    );
  }

  Stream<String> _clock() async* {

    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      DateTime now = DateTime.now();
      int? hour;
      String? t;

      if(now.hour >12 && now.hour < 24)
        {
          hour = now.hour - 12 ;
          t = "PM";
        }
      else
        {
          hour = now.hour;
          t = "AM";
        }

      yield  "${doubleDigitConverter(hour)}:${doubleDigitConverter(now.minute)}:${doubleDigitConverter(now.second)} $t";
    }

  }
  doubleDigitConverter(int time)
  {
    return time.toString().padLeft(2,"0");

  }

}
