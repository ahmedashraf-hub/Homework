import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.categeory});

  final String categeory;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.categeory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: SliverToBoxAdapter(
              child: Center(child: Text('Oops there was an error, try later')),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        }
      },
    );
  }
}
