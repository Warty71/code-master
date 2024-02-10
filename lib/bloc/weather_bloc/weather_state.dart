import 'package:code_master/models/weather_model/weather_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(false) bool? isLoading,
    WeatherModel? weather,
  }) = _WeatherState;
}
