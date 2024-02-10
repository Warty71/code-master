import 'package:json_annotation/json_annotation.dart';

part 'weather_dto.g.dart';

@JsonSerializable()
class WeatherDto {
  const WeatherDto({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.rain,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);

  final Map<String, dynamic>? coord;
  final List<dynamic>? weather;
  final String? base;
  final Map<String, dynamic>? main;
  final int? visibility;
  final Map<String, dynamic>? wind;
  final Map<String, dynamic>? rain;
  final Map<String, dynamic>? clouds;
  final int? dt;
  final Map<String, dynamic>? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;

  Map<String, dynamic> toJson() => _$WeatherDtoToJson(this);
}
