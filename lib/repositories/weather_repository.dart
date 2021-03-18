import 'dart:convert';

import 'package:meta/meta.dart';

import 'package:flutter_weather_2/repositories/weather_api_client.dart';
import 'package:flutter_weather_2/models/models.dart';

class WeatherRepository {
  final WeatherApiClient weatherApiClient;

  WeatherRepository({@required this.weatherApiClient})
      : assert(weatherApiClient != null);

  Future<Weather> getWeather(String city) async {
    try {
      final weather = await weatherApiClient.fetchWeather(city);
      return weather;
    } catch (e) {
      throw e;
    }
  }
}
