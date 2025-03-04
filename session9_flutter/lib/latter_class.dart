import 'package:flutter/material.dart';

class LatterClass extends StatelessWidget {
  final String later;
  final Color color;
  const LatterClass({super.key, required this.later, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 50,
      color: color,
      child: Center(child: Text(later, style: TextStyle(color: Colors.white))),
    );
  }
}
