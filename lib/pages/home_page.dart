import 'package:flutter/material.dart';
import 'package:my_flutter_learning/models/product.dart';
import 'package:my_flutter_learning/widgets/product_item.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final dummyLists = List.generate(20, (index) => ProductData.products[0]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 16.0),
        child: ListView.builder(
          itemCount: dummyLists.length,
          itemBuilder: (context, index) {
            return ProductItem(product: dummyLists[index]);
          },
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
