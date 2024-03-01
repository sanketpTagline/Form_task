
import 'package:flutter/material.dart';
import 'package:untitled/http_package_api/Delete_api_call/delete_item_repository.dart';

import 'delete_api_model.dart';

class DeleteApiDemo extends StatefulWidget {
  const DeleteApiDemo({super.key});

  @override
  State<DeleteApiDemo> createState() => _DeleteApiDemoState();
}

class _DeleteApiDemoState extends State<DeleteApiDemo> {
  DeleteItem? deleteItem;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: InkWell(
            onTap: () {
              ItemDelete().updateApiData().then((value) {
                deleteItem =value;
                setState(() async {
                 await Future.delayed(const Duration(seconds: 2));
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(deleteItem!.message)));
                });
              });
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15)),
              child:const Center(
                  child:  Text(
                    "Delete Item",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
