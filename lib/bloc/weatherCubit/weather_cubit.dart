import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/Service/weather_service.dart';
import 'package:weather/bloc/weatherCubit/weather_state.dart';
import 'package:weather/model/weather_model.dart';

class WeatherCubit extends Cubit<WeatherState> {
  //WeatherCubit(super.initialState);
  WeatherCubit(this.weatherService) : super(WeatherInitial());

  final WeatherService weatherService;
  WeatherModel? weatherModel;

  String? cityName;
  void getWeather({required String cityName}) async {
    emit(WeatherStateLoading());
    try {
      weatherModel = await weatherService.getWeather(cityName: cityName);
      emit(WeatherStateSucces(weatherModel: weatherModel!));
    } on Exception {
      emit(WeatherStateFailer());
    }
  }
}
