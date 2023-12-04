import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/categories_listview.dart';
import 'package:news_cloud/widgets/news_listview_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                  color: Color(0xffDCBE92),
                ),
              )
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListview(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 28,
                ),
              ),
              NewsListviewBuilder(category: "general"),
            ],
          ),
        ),
      );
  }
}



