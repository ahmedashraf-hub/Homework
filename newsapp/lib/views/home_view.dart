import 'package:flutter/material.dart';
import 'package:newsapp/widgets/categories_list_view.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            NewsListViewBuilder(categeory: 'general'),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(height: 32),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
