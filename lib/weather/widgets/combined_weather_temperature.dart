import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:flutter_weather_2/models/models.dart' as model;
import 'package:flutter_weather_2/weather/weather.dart';
import 'package:flutter_weather_2/settings/settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CombinedWeatherTemperature extends StatelessWidget {
  final model.Weather weather;

  CombinedWeatherTemperature({
    Key key,
    @required this.weather,
  })  : assert(weather != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: WeatherConditions(condition: weather.formattedCondition),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: BlocBuilder<SettingsBloc, SettingsState>(
                builder: (context, state) {
                  return Temperature(
                      temperature: weather.temp,
                      high: weather.maxTemp,
                      low: weather.minTemp,
                      units: state.temperatureUnits);
                },
              ),
            ),
          ],
        ),
        Center(
          child: Text(
            weather.condition,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
