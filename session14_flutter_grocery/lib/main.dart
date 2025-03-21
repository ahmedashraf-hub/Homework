import 'package:flutter/material.dart';
// import 'package:grocery/screens/onboarding0.dart';
import 'package:grocery/screens/onboarding1.dart';

void main() {
  runApp(Grocery());
}

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Onboarding1());
  }
}
