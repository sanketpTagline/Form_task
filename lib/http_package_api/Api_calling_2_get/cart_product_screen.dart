import 'package:flutter/material.dart';

import 'package:untitled/http_package_api/Api_calling_2_get/secondApicall.dart';

class CartProductScreen extends StatefulWidget {
  const CartProductScreen({super.key});

  @override
  State<CartProductScreen> createState() => _CartProductScreenState();
}

class _CartProductScreenState extends State<CartProductScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 310),
          itemCount: SecondApiCallDemo.cartProduct.length,
          itemBuilder: (context, index) {
            return Card(
                margin: const EdgeInsets.all(10),
                elevation: 10,
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.network(SecondApiCallDemo.cartProduct[index].thumbnail,
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  maxLines: 2,
                                  SecondApiCallDemo.cartProduct[index].title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Text("${SecondApiCallDemo.cartProduct[index].price} ₹",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(Icons.card_travel)
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ));
          })

    ));
  }
}
