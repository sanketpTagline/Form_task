import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:untitled/http_package_api/Api_calling_2_get/secondModel.dart';

import 'cart_product_screen.dart';

class SecondApiCallDemo extends StatefulWidget {
  const SecondApiCallDemo({super.key});

  static List<Product> cartProduct = [];

  @override
  State<SecondApiCallDemo> createState() => _SecondApiCallDemoState();
}

class _SecondApiCallDemoState extends State<SecondApiCallDemo> {
  List<Product> allCart = [];

  Carts? cart;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {
                if (kDebugMode) {
                  print("Tap on cart");
                }
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const CartProductScreen();
                  },
                ));
              },
              icon: const Icon(
                Icons.card_travel,
                color: Colors.white,
              ))
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 310),
              itemCount: allCart.length,
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
                            child: Image.network(allCart[index].thumbnail,
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
                                  allCart[index].title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("${allCart[index].price} ₹",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        if (SecondApiCallDemo.cartProduct
                                            .contains(allCart[index])) {
                                          if (kDebugMode) {
                                            print("Product already added");
                                          }
                                        } else {
                                          if (kDebugMode) {
                                            print("Product add successfully");
                                          }
                                          SecondApiCallDemo.cartProduct
                                              .add(allCart[index]);
                                        }
                                        if (kDebugMode) {
                                          print(SecondApiCallDemo.cartProduct);
                                        }
                                      },
                                      child: const Icon(Icons.card_travel))
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ));
              }),
    ));
  }

  Future<void> _getApiData() async {
    try {
      var url = Uri.parse('https://dummyjson.com/carts');
      var response = await http.get(url);
      if (kDebugMode) {
        print('Response status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
      cart = cartsFromJson(response.body);

      setState(() {
        isLoading = false;
      });

      // length for main list cart
      int len = cart!.carts.length;

      for (int i = 0; i < len; i++) {
        for (var item in cart!.carts[i].products) {
          allCart.add(item);
        }
      }
      if (kDebugMode) {
        print(allCart.length);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
