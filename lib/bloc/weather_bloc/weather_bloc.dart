import 'package:code_master/bloc/weather_bloc/weather_event.dart';
import 'package:code_master/bloc/weather_bloc/weather_state.dart';
import 'package:code_master/handlers/weather_handler/weather_handler.dart';
import 'package:code_master/managers/snackbar_manager.dart';
import 'package:code_master/models/weather_model/weather_model.dart';
import 'package:code_master/utils/dto_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherHandler weatherHandler = WeatherHandler();

  WeatherBloc() : super(const WeatherState()) {
    on<WeatherEvent>((event, emit) async {
      try {
        if (event is GetWeather) {
          // * Fetch Weather Data
          final weatherDto = await weatherHandler.getWeather(
            event.lat,
            event.lon,
            dotenv.env["API_KEY"]!,
          );

          final WeatherModel weather = DTOtoModel.weatherDtM(weatherDto);

          emit(state.copyWith(weather: weather));
        }
      } catch (e) {
        SnackbarManager().showSnackbar(e.toString());
        rethrow;
      }
    });
  }
}
