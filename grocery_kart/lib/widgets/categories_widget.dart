import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
      {Key? key, required this.categoryText, required this.imagePath})
      : super(key: key);
  final String categoryText, imagePath;
  @override
  Widget build(BuildContext context) {
    double _maxScreenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.red.withOpacity(0.7), width: 2)),
        child: Column(
          children: [
            Container(
              height: _maxScreenWidth * 0.3,
              width: _maxScreenWidth * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imagePath,
                      ),
                      fit: BoxFit.fill)),
            ),
            Text(
              categoryText,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
