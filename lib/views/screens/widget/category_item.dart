import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final int index;
  CategoryItem({Key? key, required this.index}) : super(key: key);
  List<Map<String, Object>> categories = [
    {
      'categoryName': 'Phones',
      'categoryImage': 'assets/images/CatPhones.png',
    },
    {
      'categoryName': 'Clothes',
      'categoryImage': 'assets/images/CatClothes.jpg'
    },
    {
      'categoryName': 'Laptop',
      'categoryImage': 'assets/images/CatLaptops.png',
    },
    {
      'categoryName': 'Shoes',
      'categoryImage': 'assets/images/CatShoes.jpg',
    },
    {
      'categoryName': 'Watches',
      'categoryImage': 'assets/images/CatWatches.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            image: DecorationImage(
              image: AssetImage(
                '${categories[index]['categoryImage']}',
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          left: 10,
          bottom: 0,
          child: Container(
            child: Text(
              '${categories[index]['categoryName']}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
