import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/models/article_model.dart';
import 'package:news_cloud/services/news_service.dart';
import 'package:news_cloud/widgets/news_listview.dart';

class NewsListviewBuilder extends StatefulWidget {
  const NewsListviewBuilder({
    super.key, required this.category,
  });

  final String category;

  @override
  State<NewsListviewBuilder> createState() => _NewsListviewBuilderState();
}

class _NewsListviewBuilderState extends State<NewsListviewBuilder> {

  // ignore: prefer_typing_uninitialized_variables
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadlinesNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future, 
      builder: (context, snapshot) {
       if(snapshot.hasData) {
        return NewsListview(articles: snapshot.data!);
        } else if(snapshot.hasError) {
          return const SliverToBoxAdapter(child: Center(child: Text("oops there are was an error, try later.")));
        } else {
          return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
        }
      },
      );
    
    
    // isLoading
    //     ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty ? NewsListview(
    //         articles: articles,
    //       ) : SliverToBoxAdapter(child: Center(child: Text("oops there are was an error, try later.")));
  }
}
