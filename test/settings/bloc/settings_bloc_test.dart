import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_2/settings/bloc/bloc.dart';

void main() {
  group('SettingsBloc', () {
    blocTest(
      'emits temperature settings with fahrenheit',
      build: () => SettingsBloc(),
      act: (bloc) => bloc.add(TemperatureUnitsToggled()),
      expect: [SettingsState(temperatureUnits: TemperatureUnits.fahrenheit)],
    );

    blocTest(
      'emits temperature settings with fahrenheit',
      build: () => SettingsBloc(),
      act: (bloc) {
        bloc.add(TemperatureUnitsToggled());
        bloc.add(TemperatureUnitsToggled());
      },
      expect: [
        SettingsState(temperatureUnits: TemperatureUnits.fahrenheit),
        SettingsState(temperatureUnits: TemperatureUnits.celsius),
      ],
    );
  });
}
