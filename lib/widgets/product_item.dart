import 'package:flutter/material.dart';
import 'package:my_flutter_learning/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  static const defaultImg =
      'https://tt-telecom.nl/wp-content/uploads/2022/09/full-cover-screen-protector-iphone-14.jpg';

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
        child: ListTile(
          leading: Image.network(product.image ?? defaultImg),
          title: Text(product.name ?? 'N/A'),
          subtitle: Text(product.desc ?? 'N/A'),
          trailing: Text(
            '\$${product.price ?? 0}',
            textScaleFactor: 1.5,
            style: const TextStyle(
                color: Colors.purple, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
