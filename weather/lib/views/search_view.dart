import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/srvices/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text('Search city', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            onSubmitted: (value) async {
              weatherModel = await WeatherService(
                Dio(),
              ).getCurrentWeather(cityName: value);
              // log(weatherModel.cityName);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 16,
              ),
              labelText: 'Search',
              hintText: 'Enter city name',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
