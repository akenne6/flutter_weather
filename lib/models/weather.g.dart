// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
      formattedCondition: _$enumDecodeNullable(
          _$WeatherConditionEnumMap, json['formattedCondition']),
      temp: (json['temp'] as num)?.toDouble(),
      minTemp: (json['minTemp'] as num)?.toDouble(),
      maxTemp: (json['maxTemp'] as num)?.toDouble(),
      location: json['location'] as String,
      locationId: json['locationId'] as String,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String));
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'formattedCondition':
          _$WeatherConditionEnumMap[instance.formattedCondition],
      'temp': instance.temp,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
      'location': instance.location,
      'locationId': instance.locationId,
      'created': instance.created?.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String()
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$WeatherConditionEnumMap = <WeatherCondition, dynamic>{
  WeatherCondition.clear: 'Clear',
  WeatherCondition.cloudy: 'Cloudy',
  WeatherCondition.snow: 'Snow',
  WeatherCondition.rainy: 'Rainy',
  WeatherCondition.thunderStorm: 'Thunderstorm'
};
