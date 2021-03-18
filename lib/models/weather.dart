import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

enum WeatherCondition {
  @JsonValue('Clear')
  clear,
  @JsonValue('Cloudy')
  cloudy,
  @JsonValue('Snow')
  snow,
  @JsonValue('Rainy')
  rainy,
  @JsonValue('Thunderstorm')
  thunderStorm
}

@JsonSerializable()
class Weather extends Equatable {
  final String condition;
  @JsonKey(name: 'formattedCondition')
  final WeatherCondition formattedCondition;
  @JsonKey(name: 'temp')
  final double temp;
  @JsonKey(name: 'minTemp')
  final double minTemp;
  @JsonKey(name: 'maxTemp')
  final double maxTemp;
  @JsonKey(name: 'location')
  final String location;
  @JsonKey(name: 'locationId')
  final String locationId;
  @JsonKey(name: 'created')
  final DateTime created;
  @JsonKey(name: 'lastUpdated')
  final DateTime lastUpdated;

  Weather({
    @required this.formattedCondition,
    @required this.temp,
    @required this.minTemp,
    @required this.maxTemp,
    @required this.location,
    @required this.locationId,
    @required this.created,
    @required this.lastUpdated,
  }) : condition = _$WeatherConditionEnumMap[formattedCondition];

  @override
  List<Object> get props => [
        condition,
        formattedCondition,
        temp,
        minTemp,
        maxTemp,
        location,
        locationId,
        created,
        lastUpdated
      ];

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
