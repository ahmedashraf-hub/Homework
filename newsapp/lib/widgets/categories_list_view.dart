import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/images/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/images/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/images/entertaiment.avif',
      categoryName: 'Entertaiment',
    ),
    CategoryModel(image: 'assets/images/general.avif', categoryName: 'General'),
    CategoryModel(image: 'assets/images/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/images/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/images/sports.avif', categoryName: 'sports'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
