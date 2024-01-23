import 'package:weather/helper/api.dart';
import '../model/weather_model.dart';

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = '3677bed892474b30b7a122242220806';

  Future<WeatherModel> getWeather({required String cityName}) async {
    var data = await API.get(
        url: '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
    print(data);
    WeatherModel weather = WeatherModel.fromJson(data);

    return weather;
  }
}
