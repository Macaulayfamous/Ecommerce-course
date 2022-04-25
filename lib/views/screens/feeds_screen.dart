import 'package:ecommerce_app/provider/products.dart';
import 'package:ecommerce_app/views/screens/widget/feeds_products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/products.dart';

class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<Products>(context);
    List<Product> productList = productsProvider.products;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Feeds Products',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          childAspectRatio: 240 / 320,
          mainAxisSpacing: 8,
          children: List.generate(
            productList.length,
            (index) => ChangeNotifierProvider.value(
                value: productList[index], child: FeedsProducts()),
          ),
        ));
  }
}
