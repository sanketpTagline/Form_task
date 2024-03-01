import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:untitled/http_package_api/Api_calling/firstmodel.dart';
import 'package:untitled/http_package_api/repository.dart';
import 'package:untitled/http_package_api/Api_calling/userPersonalDetail.dart';


class FirstGetApi extends StatefulWidget {
  const FirstGetApi({super.key});

  @override
  State<FirstGetApi> createState() => _FirstGetApiState();
}

class _FirstGetApiState extends State<FirstGetApi> {
  bool _isLoading = true;

  List<UserModel>? userModel1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Repository().getResponse().then((value) {
      userModel1 = value;
      _isLoading = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text("User List"), centerTitle: true),
          body: _isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: userModel1!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.grey[200],
                      child: InkWell(
                        onTap: () {
                          if (kDebugMode) {
                            print("${userModel1![index].runtimeType}");
                          }
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return UserPersonalDetail(userModel1![index]);
                            },
                          ));
                        },
                        child: ListTile(
                          leading: Text(
                            "${userModel1![index].id}",
                            style: const TextStyle(fontSize: 15),
                          ),
                          title: Text(userModel1![index].name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500)),
                        ),
                      ),
                    );
                  },
                )),
    );
  }
}
