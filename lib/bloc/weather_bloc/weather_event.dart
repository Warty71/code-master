abstract class WeatherEvent {}

class GetWeather extends WeatherEvent {
  final double lat;
  final double lon;

  GetWeather(
    this.lat,
    this.lon,
  );
}
