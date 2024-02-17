import 'package:flutter/material.dart';

class Product{
  final String imageUrl;
  final String name;
  final String price;

  Product({required this.imageUrl, required this.name, required this.price});
}

List<Product> mockProducts = [
  Product(imageUrl: 'https://www.pexels.com/photo/women-in-the-village-grow-rice-together-for-the-family-20187061/', name: 'japan gate ', price: '150'),
  Product(imageUrl: 'imageUrl', name: 'example1', price: 'price'),
  Product(imageUrl: 'imageUrl', name: 'name', price: 'price'),
  Product(imageUrl: 'imageUrl', name: 'name', price: 'price'),
  Product(imageUrl: 'imageUrl', name: 'name', price: 'price'),
  Product(imageUrl: 'imageUrl', name: 'name', price: 'price'),
  Product(imageUrl: 'imageUrl', name: 'name', price: 'price'),
];