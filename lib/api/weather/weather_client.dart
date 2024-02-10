import 'package:code_master/api/weather/dto/weather_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "weather_client.g.dart";

@RestApi(baseUrl: "https://api.openweathermap.org/data/2.5")
abstract class WeatherClient {
  factory WeatherClient(Dio dio, {String baseUrl}) = _WeatherClient;

  @GET("/weather")
  Future<WeatherDto> getWeather(
    @Query("lat") double lat,
    @Query("lon") double lon,
    @Query("appid") String appid,
  );
}
