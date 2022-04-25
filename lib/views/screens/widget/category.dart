import 'package:ecommerce_app/views/screens/widget/category_item.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext contex, int index) => CategoryItem(
          index: index,
        ),
      ),
    );
  }
}
