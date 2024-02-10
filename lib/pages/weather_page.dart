import 'package:code_master/bloc/weather_bloc/weather_bloc.dart';
import 'package:code_master/bloc/weather_bloc/weather_event.dart';
import 'package:code_master/bloc/weather_bloc/weather_state.dart';
import 'package:code_master/widgets/cm_appbar.dart';
import 'package:code_master/widgets/cm_weather_report.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const CmAppBar(),
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Column(
            children: [
              // * Get Weather Button
              Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: () async {
                    BlocProvider.of<WeatherBloc>(context).add(
                      GetWeather(
                        44.20,
                        17.90,
                      ),
                    );
                  },
                  child: const Text(
                    'Get Weather',
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // * Weather Report
              CmWeatherReport(),
            ],
          ),
        );
      },
    );
  }
}
