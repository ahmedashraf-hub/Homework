import 'package:flutter/material.dart';

class NumbersClass extends StatelessWidget {
  final String number;
  final Color color;
  NumbersClass({super.key, required this.number, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      color: color,

      child: Center(
        child: Text(
          number,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
