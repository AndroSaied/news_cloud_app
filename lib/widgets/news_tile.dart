import 'package:flutter/material.dart';
import 'package:news_cloud/models/article_model.dart';
import 'package:news_cloud/pages/details_page.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key, required this.article,
  });

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailsPage(article: article);
        },));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(article.image ?? "https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg"),
          ),
          Text(
            article.title,
            style: const TextStyle(
              fontSize: 18,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
            ),
          Text(
            article.subTitle ?? "",
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.grey,
            ),
            maxLines: 2,
            )
        ],
      ),
    );
  }
}