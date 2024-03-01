import 'package:flutter/material.dart';
import 'package:untitled/http_package_api/Put_api_callings/item_repository.dart';

import 'package:untitled/http_package_api/Put_api_callings/itemproduct_model.dart';

class PutApiDemo extends StatefulWidget {
  const PutApiDemo({super.key});

  @override
  State<PutApiDemo> createState() => _PutApiDemoState();
}

class _PutApiDemoState extends State<PutApiDemo> {
  TextEditingController title = TextEditingController();
  ItemUpdate? itemUpdate;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          TextFormField(
            controller: title,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter the your title";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.alternate_email),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              hintText: "Enter Your title",
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: () {
              Map<String,dynamic> map = {
                "id":11,
                "title": title.text.toString(),
                "price": 549,
                "stock": 94,
                "rating": 4.69,
                "images": [
                  "https://cdn.dummyjson.com/product-images/1/1.jpg",
                  "https://cdn.dummyjson.com/product-images/1/2.jpg",
                  "https://cdn.dummyjson.com/product-images/1/3.jpg",
                  "https://cdn.dummyjson.com/product-images/1/4.jpg",
                  "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg"
                ],
                "thumbnail": "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg",
                "description": "An apple mobile which is nothing like apple",
                "brand": "Apple",
                "category": "smartphones"
              };
              ItemUpdated().updateApiData(map).then((value) {
                itemUpdate = value;
                setState(() {

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

    ));
  }
}

