import 'package:code_master/bloc/weather_bloc/weather_bloc.dart';
import 'package:code_master/bloc/weather_bloc/weather_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CmWeatherReport extends StatelessWidget {
  const CmWeatherReport({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (builder, state) {
        if (state.weather != null) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 2.0,
                horizontal: 10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // * Weather Report
                  Text(
                    "W E A T H E R",
                    style: GoogleFonts.roadRage(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 40,
                    ),
                  ),

                  // * Description
                  Text(
                    'Description: ${state.weather?.weatherDescription ?? 'No Description'}',
                    style: GoogleFonts.roadRage(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 22,
                    ),
                  ),

                  // * Temperature
                  Text(
                    'Temperature: ${state.weather?.temperature} K',
                    style: GoogleFonts.roadRage(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 22,
                    ),
                  ),

                  // * Feels Like
                  Text(
                    'Feels Like: ${state.weather?.feelsLike} K',
                    style: GoogleFonts.roadRage(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 22,
                    ),
                  ),

                  // * Humidity
                  Text(
                    'Humidity: ${state.weather?.humidity} %',
                    style: GoogleFonts.roadRage(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 22,
                    ),
                  ),

                  // * Pressure
                  Text(
                    'Pressure: ${state.weather?.pressure} hPa',
                    style: GoogleFonts.roadRage(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 22,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        } else {
          return Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'No Weather Data',
                style: GoogleFonts.roadRage(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 40,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
