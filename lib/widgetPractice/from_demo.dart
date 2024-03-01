import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController passwrod = TextEditingController();
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
    resizeToAvoidBottomInset: true,
        extendBody: true,
        body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  h15(),
                  TextFormField(
                    controller: name,
                     keyboardType: TextInputType.name,
                     validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please Enter the Name";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: "Enter The Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  h15(),
                  TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please Enter the Email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.alternate_email),
                        hintText: "Enter The Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  h15(),
                  TextFormField(
                    controller: passwrod,
                    obscureText: true,
                     validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please Enter the Password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password_rounded),
                        hintText: "Enter The password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  h15(),
                  TextFormField(
                    controller: number,
                    keyboardType: TextInputType.phone,

                     maxLength: 10,
                     validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please Enter the Phone Number";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        hintText: "Enter The Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  h15(),
                  InkWell(
                    onTap: () {
                      if(_formKey.currentState!.validate())
                        {
                         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Form submit successfully")));
                        }
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
                ],
              ),
            )),
      ),
    );
  }

  h15() {
    return const SizedBox(
      height: 15,
    );
  }
}
