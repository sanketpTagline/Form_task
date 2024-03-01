import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Dio_package_api/Delete_api_Dio/delete_item_dio_repo.dart';

import '../../http_package_api/Delete_api_call/delete_api_model.dart';

class DeleteItemDemoDio extends StatefulWidget {
  const DeleteItemDemoDio({super.key});

  @override
  State<DeleteItemDemoDio> createState() => _DeleteItemDemoDioState();
}

class _DeleteItemDemoDioState extends State<DeleteItemDemoDio> {
  DeleteItem? deleteItem;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: InkWell(
            onTap: () {
              ItemDeleteDio().updateApiData().then((value) {
                deleteItem =value;
                setState(()  {

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
