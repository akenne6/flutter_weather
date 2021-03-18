import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_weather_2/settings/settings.dart';
import 'package:mockito/mockito.dart';

class MockSettingsBloc extends MockBloc<SettingsState> implements SettingsBloc {
}

void main() {
  group('SettingsPage', () {
    SettingsBloc settingsBloc;

    setUp(() {
      settingsBloc = MockSettingsBloc();
    });

    testWidgets('is routable', (tester) async {
      when(settingsBloc.state).thenReturn(
        SettingsState(
          temperatureUnits: TemperatureUnits.fahrenheit,
        ),
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => settingsBloc,
                        child: Settings(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(find.byType(Settings), findsOneWidget);
    });

    testWidgets('adds temperature toggled event', (tester) async {
      when(settingsBloc.state).thenReturn(
        SettingsState(
          temperatureUnits: TemperatureUnits.fahrenheit,
        ),
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => settingsBloc,
                        child: Settings(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(Switch));
      verify(settingsBloc.add(TemperatureUnitsToggled())).called(1);
    });
  });
}
