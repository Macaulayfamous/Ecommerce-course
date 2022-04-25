import 'package:flutter/widgets.dart';

import '../models/products.dart';

class Products with ChangeNotifier {
  List<Product> _products = [
    Product(
      id: 'Gucci oversized',
      title: 'Gucci oversized',
      description: 'Gucci is one of the best selling clothes in the universe',
      price: 9.99,
      imageUrl: 'assets/images/arrival1.png',
      productCategoryname: 'clothes',
      quantity: 2,
    ),
    Product(
      id: 'T-shirt oversized',
      title: 'T-shirt oversized',
      description: 'T-shirt is one of the best selling clothes in the universe',
      price: 19.99,
      imageUrl: 'assets/images/arrival2.png',
      productCategoryname: 'clothes',
      quantity: 2,
    ),
  ];
  Product findById(String productId) {
    return _products.firstWhere(
      (element) => element.id == productId,
    );
  }

  List<Product> get products {
    return _products;
  }
}
