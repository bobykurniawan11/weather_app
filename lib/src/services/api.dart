import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/src/models/weather_data.dart';

class Api {
  BaseOptions options = BaseOptions(
    baseUrl: WeatherApiURL.url,
    connectTimeout: 30 * 1000,
    receiveTimeout: 30 * 1000,
  );

  Dio getDio() {
    return Dio(options);
  }

  Future<List<WeatherData>> getWeather() async {
    var result;
    try {
      Dio dio = getDio();
      result = await dio.get('');
    } on DioError catch (e) {
      print(e.toString());
    }
    if (result != null) {
      return jsonParse(json.decode(result.data));
    }
    return [];
  }

  List<WeatherData> jsonParse(List<dynamic> data) {
    return data.map((job) => new WeatherData.fromJson(job)).toList();
  }
}
