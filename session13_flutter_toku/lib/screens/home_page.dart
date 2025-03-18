import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEF6DB),
      appBar: AppBar(title: Text('Toku'), backgroundColor: Color(0XFF46322B)),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            categoryColor: Color(0XFFEF9235),
            categoryText: 'Numbers',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return FamilyMembersPage();
                  },
                ),
              );
            },
            categoryColor: Color(0XFF558837),
            categoryText: 'Family Members',
          ),

          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ColorsPage();
                  },
                ),
              );
            },
            categoryColor: Color(0XFF79359F),
            categoryText: 'Colors',
          ),

          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
            categoryColor: Color(0XFF50ADC7),
            categoryText: 'Phrases',
          ),
        ],
      ),
    );
  }
}
