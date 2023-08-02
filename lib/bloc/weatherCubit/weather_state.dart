import 'package:weather/model/weather_model.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherStateLoading extends WeatherState {}

class WeatherStateSucces extends WeatherState {
  WeatherModel weatherModel;
  WeatherStateSucces({required this.weatherModel});
}

class WeatherStateFailer extends WeatherState {}
