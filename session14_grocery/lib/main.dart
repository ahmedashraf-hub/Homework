import 'package:flutter/material.dart';
import 'package:session14_grocery/views/splash_view.dart';

void main() {
  runApp(Grocery());
}

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashView());
  }
}
