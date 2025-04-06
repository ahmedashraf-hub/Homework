import 'package:flutter/material.dart';
import 'package:quiz/views/home_view.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
