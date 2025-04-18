import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  getGeneralNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=38558a0d5bdd4e8b92c165eafc501856&country=us&category=general',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    print(articles);
  }
}
