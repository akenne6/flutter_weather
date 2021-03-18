import 'package:flutter/material.dart';

import 'package:flutter_weather_2/models/models.dart';

class WeatherConditions extends StatelessWidget {
  final WeatherCondition condition;

  WeatherConditions({
    Key key,
    @required this.condition,
  })  : assert(condition != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _mapConditionToImage(condition);
  }

  Image _mapConditionToImage(WeatherCondition condition) {
    Image image;
    switch (condition) {
      case WeatherCondition.clear:
        image = Image.asset(
          'assets/clear.png',
          fit: BoxFit.fill,
        );
        break;
      case WeatherCondition.snow:
        image = Image.asset(
          'assets/snow.png',
          fit: BoxFit.fill,
          height: 40,
        );
        break;
      case WeatherCondition.cloudy:
        image = Image.asset(
          'assets/cloudy.png',
          fit: BoxFit.fill,
        );
        break;
      case WeatherCondition.rainy:
        image = Image.asset(
          'assets/rainy.png',
          fit: BoxFit.fitWidth,
        );
        break;
      case WeatherCondition.thunderStorm:
        image = Image.asset(
          'assets/thunderstorm.png',
          fit: BoxFit.fill,
        );
        break;
      default:
        image = Image.asset(
          'assets/clear.png',
          fit: BoxFit.fill,
        );
        break;
    }
    return image;
  }
}
