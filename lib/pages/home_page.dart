import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_learning/models/product.dart';
import 'package:my_flutter_learning/pages/product_details_page.dart';
import 'package:my_flutter_learning/widgets/product_item.dart';

import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 16.0),
        child: ProductData.products.isNotEmpty
            ? ListView.builder(
                itemCount: ProductData.products.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails(
                                  product: ProductData.products[index]))),
                      child: ProductItem(product: ProductData.products[index]));
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const AppDrawer(),
    );
  }

  getAllProducts() async {
    var jsonData = await rootBundle.loadString('assets/jsons/products.json');
    var resData = const JsonDecoder().convert(jsonData);
    var products = resData['data'];
    await Future.delayed(const Duration(seconds: 2));
    ProductData.products = List.from(products)
        .map<Product>((item) => Product.fromMap(item))
        .toList();

    setState(() {});
  }
}
