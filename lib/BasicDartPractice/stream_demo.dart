
// Example - 1

// void main()
// {
//   var controller = StreamController();
//   controller.stream.listen((event) {
//     print(event);
//   });
//   controller.add(5);
//   controller.add("hello");
//   controller.addError("error!");
// }

// Example -2
// Stream<int> printNumber (int number) async*
// {
//   for(int i =0; i<= number;i++)
//     {
//       yield i;
//     }
// }
// void main()
// {
//   var stream = printNumber(6);
//   stream.listen((event) {
//     print(event);
//   });
// }
//






// void main()
// {
// Stream<int> stream =Stream.periodic(Duration(seconds: 1),(e) {
//   print(e);
//   return e+1;
//
// },);

// print("First Operation");
// Future.delayed(Duration(seconds:3),()=>print('Second Big Operation'));
// print("Third Operation");
// print("Last Operation");
//
// function that returns a future
// function that returns a future

// main function

// print("Start");
// getUserName().then((value) => print(value));
// print("End");
// print("Start");
// getData();
// print("End");

// }
// Future<String> getUserName() async {
//   return Future.delayed(Duration(seconds: 2), () => 'Mark');
// }

//
// void getData() async{
//   String data = await middleFunction();
//   print(data);
// }
//
// Future<String> middleFunction(){
//   return Future.delayed(Duration(seconds:5), ()=> "Hello");
// }

// Stream<int> foo() async* {
//   for (int i = 0; i <= 40; i++) {
//     await Future.delayed(const Duration(seconds: 1));
//     yield i;
//   }
// }

// void main() {
//   print(getUserName());
//
// }
//
// Stream<String> getUserName()
// {
//   return Stream.fromIterable(['Mark',"john","denish"]);
// }


// import 'dart:async';
//
// StreamController<String> controller = StreamController<String>();
// Stream stream =   controller.stream;
//
// void main()
// {
//   stream.listen((value) {
//     print("Value from controller: $value");
//   });
// }