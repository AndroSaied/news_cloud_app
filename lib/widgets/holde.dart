// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_cloud/models/article_model.dart';
// import 'package:news_cloud/services/news_service.dart';
// import 'package:news_cloud/widgets/news_tile.dart';

// class NewsListview extends StatefulWidget {
//   const NewsListview({
//     super.key,
//   });

//   @override
//   State<NewsListview> createState() => _NewsListviewState();
// }

// class _NewsListviewState extends State<NewsListview> {

//   List<ArticleModel> articles = [];

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getGeneralNews();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//         (context, index) {
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 10.0),
//           child: NewsTile(article: articles[index],),
//         );
//       },)
//     );
//   }
// }