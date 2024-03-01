
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/http_package_api/post_api_calling/login_model.dart';

class PostApiDemo extends StatefulWidget {
  const PostApiDemo({super.key});

  @override
  State<PostApiDemo> createState() => _PostApiDemoState();
}

class _PostApiDemoState extends State<PostApiDemo> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _userauth = GlobalKey<FormState>();
  bool _isLoading = true;
  Auth? auth;

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
                  controller: email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter the your Email";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: "Enter Your Email",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: password,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter the your password";
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: "Enter Your Password",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (_userauth.currentState!.validate()) {
                      _senddataapi().then((value) {
                        if (value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Signup successfully")));
                        }
                      });
                    }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: _isLoading
                            ? const Text(
                                "Submit",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )
                            : const CircularProgressIndicator()),
                  ),
                ),
              ]),
        ),
      ),
    ));
  }

  Future<bool> _senddataapi() async {
    Map map = {
      "email": email.text.toString(),
      "password": password.text.toString()
    };
    var url = Uri.parse("https://reqres.in/api/register");
    var response = await http.post(url, body: map);
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    auth = authFromJson(response.body);
    _isLoading = false;
    // setState(() {
    //   print("Token is ${auth!.id}");
    //   print("Token is ${auth!.token}");
    //
    // });
    return true;
  }
}
