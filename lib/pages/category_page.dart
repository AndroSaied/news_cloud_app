import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/news_listview_builder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: CustomScrollView(
          slivers: [
            NewsListviewBuilder(category: category),
          ],
        ),
      ),
    );
  }
}