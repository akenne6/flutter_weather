import 'package:equatable/equatable.dart';
import 'package:flutter_weather_2/models/weather.dart';
import 'package:meta/meta.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class WeatherChanged extends ThemeEvent {
  final WeatherCondition condition;

  const WeatherChanged({@required this.condition}) : assert(condition != null);

  @override
  List<Object> get props => [condition];
}
