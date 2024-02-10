import 'package:code_master/api/weather/dto/weather_dto.dart';
import 'package:code_master/api/weather/weather_client.dart';
import 'package:code_master/managers/snackbar_manager.dart';
import 'package:dio/dio.dart';

class WeatherHandler {
  Future<WeatherDto> getWeather(double lat, double lon, String appid) async {
    try {
      return WeatherClient(Dio()).getWeather(lat, lon, appid);
    } on DioException catch (e) {
      e.type;
      SnackbarManager().showSnackbar(e.toString());
      rethrow;
    } catch (e) {
      SnackbarManager()
          .showSnackbar("Unknown error occurred. Please try again.");
      rethrow;
    }
  }
}
