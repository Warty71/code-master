import 'package:code_master/api/weather/dto/weather_dto.dart';
import 'package:code_master/models/weather_model/weather_model.dart';

class DTOtoModel {
  static WeatherModel weatherDtM(WeatherDto weatherDTO) {
    return WeatherModel(
      lat: weatherDTO.coord?['lat'],
      lon: weatherDTO.coord?['lon'],
      weatherDescription: weatherDTO.weather?[0]['description'],
      temperature: weatherDTO.main?['temp'],
      feelsLike: weatherDTO.main?['feels_like'],
      tempMin: weatherDTO.main?['temp_min'],
      tempMax: weatherDTO.main?['temp_max'],
      humidity: weatherDTO.main?['humidity'],
      pressure: weatherDTO.main?['pressure'],
    );
  }
}
