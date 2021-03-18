import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_2/settings/settings.dart';

void main() {
  group('TemperaturePage', () {
    testWidgets('displays celcius', (tester) async {
      const temperature = 42.0;
      const high = 60.0;
      const low = 40.0;
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => Scaffold(
              body: Temperature(
                temperature: temperature,
                high: high,
                low: low,
                units: TemperatureUnits.celsius,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(Temperature), findsOneWidget);
      expect(find.byKey(Key('temperatureText')), findsOneWidget);
      expect(find.byKey(Key('temperatureHighText')), findsOneWidget);
      expect(find.byKey(Key('temperatureLowText')), findsOneWidget);
    });

    testWidgets('displays fahrenheit', (tester) async {
      const temperature = 42.0;
      const high = 60.0;
      const low = 40.0;
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => Scaffold(
              body: Temperature(
                temperature: temperature,
                high: high,
                low: low,
                units: TemperatureUnits.fahrenheit,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(Temperature), findsOneWidget);
      expect(find.byKey(Key('temperatureText')), findsOneWidget);
      expect(find.byKey(Key('temperatureHighText')), findsOneWidget);
      expect(find.byKey(Key('temperatureLowText')), findsOneWidget);
    });
  });
}
