import 'package:flutter/material.dart';
import 'package:news_cloud/models/category_model.dart';
import 'package:news_cloud/widgets/category_item.dart';

class CategoriesListview extends StatelessWidget {
  const CategoriesListview({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(name: "Business", photo: "assets/images/business.jpg"),
    CategoryModel(name: "Entertainment", photo: "assets/images/entertaiment.avif"),
    CategoryModel(name: "General", photo: "assets/images/general.png"),
    CategoryModel(name: "Health", photo: "assets/images/health.avif"),
    CategoryModel(name: "Science", photo: "assets/images/science.avif"),
    CategoryModel(name: "Sports", photo: "assets/images/sports.jpg"),
    CategoryModel(name: "Technology", photo: "assets/images/technology.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
      ),
    );
  }
}