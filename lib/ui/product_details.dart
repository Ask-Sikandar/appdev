import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final String product;
  final String category;
  final String subCategory;

  ProductDetailsPage({required this.product, required this.category, required this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details for $subCategory'),
      ),
      body: Center(
        child: Text('Details of $subCategory in $category for $product'),
      ),
    );
  }
}
