import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Dio_package_api/Dio_Post_api_2/employee_model.dart';
import 'package:untitled/Dio_package_api/Dio_Post_api_2/employee_repository.dart';

class DioPostDemo2 extends StatefulWidget {
  const DioPostDemo2({super.key});

  @override
  State<DioPostDemo2> createState() => _DioPostDemo2State();
}

class _DioPostDemo2State extends State<DioPostDemo2> {

  TextEditingController name = TextEditingController();
  TextEditingController salary = TextEditingController();
  TextEditingController age = TextEditingController();
  final GlobalKey<FormState> _userauth = GlobalKey<FormState>();
  Employee? employee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Form(
         key: _userauth,
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 TextFormField(
                   controller: name,
                   validator: (value) {
                     if (value!.isEmpty) {
                       return "Enter the your Name";
                     }
                     return null;
                   },
                   keyboardType: TextInputType.emailAddress,
                   decoration: const InputDecoration(
                     prefixIcon: Icon(Icons.person),
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(15))),
                     hintText: "Enter Your Name",
                   ),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 TextFormField(
                   controller: salary,
                   validator: (value) {
                     if (value!.isEmpty) {
                       return "Enter the your salary";
                     }
                     return null;
                   },
                   obscureText: true,
                   decoration: const InputDecoration(
                     prefixIcon: Icon(Icons.monetization_on_sharp),
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(15))),
                     hintText: "Enter Your salary",
                   ),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 TextFormField(
                   controller: age,
                   validator: (value) {
                     if (value!.isEmpty) {
                       return "Enter the your age";
                     }
                     return null;
                   },
                   obscureText: true,
                   decoration: const InputDecoration(
                     prefixIcon: Icon(Icons.man),
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(15))),
                     hintText: "Enter Your age",
                   ),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 InkWell(
                   onTap: () {
                     Map map = {"name":name.text.toString(),"salary":salary.text.toString(),"age":age.text.toString()};

                     EmployeeRepository().getApidata(map).then((value)
                     {
                       employee = value;
                       if (kDebugMode) {
                         print("${employee!.data.name} ${employee!.data.age} ${employee!.data.salary}   ${employee!.status}");
                       }
                       setState(() {

                       });
                     });

                     ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(
                             content: Text("Signup successfully")));
                   },
                   child: Container(
                     height: 50,
                     width: double.infinity,
                     decoration: BoxDecoration(
                         color: Colors.deepPurple,
                         borderRadius: BorderRadius.circular(15)),
                     child: const Center(
                         child:  Text(
                           "Submit",
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 16,
                               fontWeight: FontWeight.bold),
                         )
                             ),
                   ),
                 ),
               ]),
         ),
       ),
    );
  }
}
