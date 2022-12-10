import 'package:flutter/material.dart';
import 'package:my_flutter_learning/models/product.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  static const defaultImg =
      'https://tt-telecom.nl/wp-content/uploads/2022/09/full-cover-screen-protector-iphone-14.jpg';

  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Hero(
                  tag: Key(product.id!),
                  child: Image.network(product.image ?? defaultImg)),
              Text(
                product.name ?? 'N/A',
                style: const TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  fontSize: 32
                ),

              ),
              Text(
                product.desc ?? 'N/A',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
