import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '083f8445b8b0417a8e5185230252604';

  WeatherService(this.dio);

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
      );

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ??
          'OOPS there was an error, try later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw ('OOPS there was an error, try later');
    }
  }
}
