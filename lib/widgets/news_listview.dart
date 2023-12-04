import 'package:flutter/material.dart';
import 'package:news_cloud/models/article_model.dart';
import 'package:news_cloud/widgets/news_tile.dart';

class NewsListview extends StatelessWidget {
  const NewsListview({
    super.key, required this.articles,
  });

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: NewsTile(article: articles[index],),
        );
      },)
    );
  }
}