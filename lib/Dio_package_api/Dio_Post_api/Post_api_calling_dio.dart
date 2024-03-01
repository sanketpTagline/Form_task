import 'package:flutter/material.dart';
import 'package:untitled/Dio_package_api/Dio_Post_api/computer_model.dart';
import 'package:untitled/Dio_package_api/Dio_Post_api/computer_repository.dart';

class PostApiCallDioDemo extends StatefulWidget {
  const PostApiCallDioDemo({super.key});

  @override
  State<PostApiCallDioDemo> createState() => _PostApiCallDioDemoState();
}

class _PostApiCallDioDemoState extends State<PostApiCallDioDemo> {
  TextEditingController name = TextEditingController();
  final GlobalKey<FormState> _userauth = GlobalKey<FormState>();
  ComputerObject? computerObject;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      prefixIcon: Icon(Icons.alternate_email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: "Enter Your Name",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Signup successfully")));

                      Map map = {
                        "name": "Apple MacBook Pro 16",
                        "data": {
                          "year": 2019,
                          "price": 1849.99,
                          "CPU model": "Intel Core i9",
                          "Hard disk size": "1 TB"
                        }
                      };
                      await ComputerRepository().getApidata(map).then((value) {
                        computerObject = value;

                        setState(() {});
                      });
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
