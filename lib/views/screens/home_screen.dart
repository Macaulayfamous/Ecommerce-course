import 'package:ecommerce_app/models/clothes.dart';
import 'package:ecommerce_app/views/screens/widget/all_products.dart';
import 'package:ecommerce_app/views/screens/widget/category.dart';
import 'package:ecommerce_app/views/screens/widget/category_list.dart';
import 'package:ecommerce_app/views/screens/widget/customApp_bar.dart';
import 'package:ecommerce_app/views/screens/widget/products.dart';
import 'package:ecommerce_app/views/screens/widget/search_input.dart';
import 'package:ecommerce_app/views/screens/widget/tagList.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SearchInput(),
          TagList(),
          Category(),
          CategoryList(),
          AllProducts(),
        ],
      ),
    ));
  }
}
