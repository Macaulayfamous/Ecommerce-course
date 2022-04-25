import 'package:ecommerce_app/models/clothes.dart';
import 'package:ecommerce_app/views/screens/widget/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/products.dart';
import '../../../provider/products.dart';

class AllProducts extends StatelessWidget {
  final clotheList = Clothes.generateClothes();
  @override
  Widget build(BuildContext context) {
    final _productsProvider = Provider.of<Products>(context);

    List<Product> _productList = _productsProvider.products;
    return Container(
      child: Column(
        children: [
          Container(
            height: 280,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ProductItem(
                      index: index,
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 8,
                    ),
                itemCount: _productList.length),
          )
        ],
      ),
    );
  }
}
