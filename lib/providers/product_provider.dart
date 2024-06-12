
import 'package:flutter/material.dart';
import 'package:urun_arama/models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [
    Product(name: 'Apple'),
    Product(name: 'Banana'),
    Product(name: 'Orange'),
    Product(name: 'Pineapple'),
    Product(name: 'Grapes'),
  ];

  List<Product> get products => _products;

  List<Product> searchProducts(String query) {
    if (query.isEmpty) {
      return _products;
    } else {
      return _products
          .where((product) => product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}
