import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    required this.categoryColor,
    required this.categoryText,
    required this.onTap,
    super.key,
  });
  final Color? categoryColor;
  final String? categoryText;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 60,
        width: double.infinity,
        color: categoryColor,
        child: Text(
          categoryText!,
          style: TextStyle(color: Color(0XFFFFFFFF), fontSize: 16),
        ),
      ),
    );
  }
}
