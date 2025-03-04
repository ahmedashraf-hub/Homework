import 'package:flutter/material.dart';

class NumLaterClass extends StatelessWidget {
  final String num;
  final String text;
  final Color fontColor;

   NumLaterClass({
    super.key,
    required this.num,
    required this.text,
    required this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 65,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(num, style: TextStyle(color: fontColor,fontWeight: FontWeight.bold,fontSize: 20)),
          Text(text, style: TextStyle(color: fontColor, fontSize: 11)),
        ],
      ),
    );
  }
}
