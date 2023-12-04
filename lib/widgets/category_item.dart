import 'package:flutter/material.dart';
import 'package:news_cloud/models/category_model.dart';
import 'package:news_cloud/pages/category_page.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CategoryPage(category: category.name,);
          },),);
        },
        child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(category.photo),
                  scale: 1.0
                )
              ),
              child: Text(category.name,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
      ),
    );
  }
}