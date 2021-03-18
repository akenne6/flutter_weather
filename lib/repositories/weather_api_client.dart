import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_weather_2/models/models.dart';

class WeatherApiClient {
  static const baseUrl = 'http://10.0.2.2:8080';
  // static const baseUrl = 'http://127.0.0.1:8080';
  final http.Client httpClient;

  WeatherApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<Weather> fetchWeather(String city) async {
    print(city);
    final weatherUrl = '$baseUrl/api/v1/weather/$city';
    final weatherResponse = await this.httpClient.get(weatherUrl);

    if (weatherResponse.statusCode != 200) {
      throw Exception('error getting weather for location');
    }
    print(weatherResponse.body);
    final weatherJson = jsonDecode(weatherResponse.body);
    return Weather.fromJson(weatherJson);
  }
}
