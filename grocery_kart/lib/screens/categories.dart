import 'package:flutter/material.dart';
import 'package:grocery_kart/widgets/categories_widget.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  List <Map<String, dynamic>> categoryInfo = [
    {
      'imagePath' : 'assets/images/categories/veg.png',
      'categorytext' : 'Vegitables',
    },
    {
      'imagePath' : 'assets/images/categories/fruits.png',
      'categorytext' : 'Fruits',
    },
    {
      'imagePath' : 'assets/images/categories/spices.png',
      'categorytext' : 'Spices',
    },
    {
      'imagePath' : 'assets/images/categories/grains.png',
      'categorytext' : 'Grains',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 240 / 250,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(4, (index) {
            return CategoriesWidget(
              categoryText: categoryInfo[index]['categorytext'],
              imagePath: categoryInfo[index]['imagePath'],
            );
          }),
        ),
      ),
    );
  }
}
