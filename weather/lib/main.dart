import 'package:flutter/material.dart';
import 'package:weather/views/home_view.dart';

void main() {
  runApp(WeatherNow());
}

class WeatherNow extends StatelessWidget {
  const WeatherNow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
