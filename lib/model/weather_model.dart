import 'package:flutter/material.dart';

class WeatherModel {
  final String weatherStateName;
  final DateTime date;
  final double temp;
  final double maxTemp;
  final double minTemp;

  WeatherModel(
      {required this.date,
      required this.temp,
      required this.weatherStateName,
      required this.maxTemp,
      required this.minTemp});

  //fromJson: {}وظيفتها انها تاخد الداتا وتملي البيانات في القوسين
  // ودا يسهل علينا اننا نستدعي الدالة fromJson جاهزة في السيرفيس فولدر
  //factory: عشان بنقيل اننا نحط فيها كونستراكتور
  // وعملنا كدا عشان عايزين نخلي ال الفاريابولز اللي فوق خالص final - nonNullable
  factory WeatherModel.fromJson(dynamic data) {
    dynamic jsonDataPath = data['forecast']['forecastday'][0]['day'];
    return WeatherModel(
        date: DateTime.parse(data['location']['localtime']),
        temp: jsonDataPath['avgtemp_c'],
        weatherStateName: jsonDataPath['condition']['text'],
        maxTemp: jsonDataPath['maxtemp_c'],
        minTemp: jsonDataPath['mintemp_c']);
  }
  String getImage() {
    if (weatherStateName == 'Sunny') {
      return 'assets/images/weatherState/day/Sunny.png';
    } else if (weatherStateName == 'Blizzard') {
      return 'assets/images/weatherState/day/Blizzard.png';
    } else if (weatherStateName == 'Blowing snow') {
      return 'assets/images/weatherState/day/Blowing snow.png';
    } else if (weatherStateName == 'Cloudy') {
      return 'assets/images/weatherState/day/Cloudy.png';
    } else if (weatherStateName == 'Fog') {
      return 'assets/images/weatherState/day/Fog.png';
    } else if (weatherStateName == 'Freezing drizzle.png') {
      return 'assets/images/weatherState/day/Freezing drizzle.png';
    } else if (weatherStateName == 'Freezing fog') {
      return 'assets/images/weatherState/day/Freezing fog.png';
    } else if (weatherStateName == 'Heavy freezing drizzle') {
      return 'assets/images/weatherState/day/Heavy freezing drizzle.png';
    } else if (weatherStateName == 'Heavy rain') {
      return 'assets/images/weatherState/day/Heavy rain.png';
    } else if (weatherStateName == 'Heavy rain at times') {
      return 'assets/images/weatherState/day/Heavy rain at times.png';
    } else if (weatherStateName == 'Heavy snow') {
      return 'assets/images/weatherState/day/Heavy snow.png';
    } else if (weatherStateName == 'Ice pellets') {
      return 'assets/images/weatherState/day/Ice pellets.png';
    } else if (weatherStateName == 'Light drizzle') {
      return 'assets/images/weatherState/day/Light drizzle.png';
    } else if (weatherStateName == 'Light freezing rain') {
      return 'assets/images/weatherState/day/Light freezing rain.png';
    } else if (weatherStateName == 'Light rain') {
      return 'assets/images/weatherState/day/Light rain.png';
    } else if (weatherStateName == 'Light rain shower') {
      return 'assets/images/weatherState/day/Light rain shower.png';
    } else if (weatherStateName == 'Light showers of ice pellets') {
      return 'assets/images/weatherState/day/Light showers of ice pellets.png';
    } else if (weatherStateName == 'Light sleet') {
      return 'assets/images/weatherState/day/Light sleet.png';
    } else if (weatherStateName == 'Light sleet showers') {
      return 'assets/images/weatherState/day/Light sleet showers.png';
    } else if (weatherStateName == 'Light snow') {
      return 'assets/images/weatherState/day/Light snow.png';
    } else if (weatherStateName == 'Light snow showers') {
      return 'assets/images/weatherState/day/Light snow showers.png';
    } else if (weatherStateName == 'Mist') {
      return 'assets/images/weatherState/day/Mist.png';
    } else if (weatherStateName == 'Moderate or heavy rain shower') {
      return 'assets/images/weatherState/day/Moderate or heavy freezing rain.png';
    } else if (weatherStateName == 'Moderate or heavy rain shower') {
      return 'assets/images/weatherState/day/Moderate or heavy rain shower.png';
    } else if (weatherStateName == 'Moderate or heavy rain with thunder') {
      return 'assets/images/weatherState/day/Moderate or heavy rain with thunder.png';
    } else if (weatherStateName == 'Moderate or heavy showers of ice pellets') {
      return 'assets/images/weatherState/day/Moderate or heavy showers of ice pellets.png';
    } else if (weatherStateName == 'Moderate or heavy sleet') {
      return 'assets/images/weatherState/day/Moderate or heavy sleet.png';
    } else if (weatherStateName == 'Moderate or heavy sleet showers') {
      return 'assets/images/weatherState/day/Moderate or heavy sleet showers.png';
    } else if (weatherStateName == 'Moderate or heavy snow showers') {
      return 'assets/images/weatherState/day/Moderate or heavy snow showers.png';
    } else if (weatherStateName == 'Moderate or heavy snow with thunder') {
      return 'assets/images/weatherState/day/Moderate or heavy snow with thunder.png';
    } else if (weatherStateName == 'Moderate rain') {
      return 'assets/images/weatherState/day/Moderate rain.png';
    } else if (weatherStateName == 'Moderate rain at times') {
      return 'assets/images/weatherState/day/Moderate rain at times.png';
    } else if (weatherStateName == 'Moderate snow') {
      return 'assets/images/weatherState/day/Moderate snow.png';
    } else if (weatherStateName == 'Overcast') {
      return 'assets/images/weatherState/day/Overcast.png';
    } else if (weatherStateName == 'Partly cloudy') {
      return 'assets/images/weatherState/day/Partly cloudy.png';
    } else if (weatherStateName == 'Patchy freezing drizzle possible') {
      return 'assets/images/weatherState/day/Patchy freezing drizzle possible.png';
    } else if (weatherStateName == 'Patchy heavy snow') {
      return 'assets/images/weatherState/day/Patchy heavy snow.png';
    } else if (weatherStateName == 'Patchy light drizzle') {
      return 'assets/images/weatherState/day/Patchy light drizzle.png';
    } else if (weatherStateName == 'Patchy light rain') {
      return 'assets/images/weatherState/day/Patchy light rain.png';
    } else if (weatherStateName == 'Patchy light rain with thunder') {
      return 'assets/images/weatherState/day/Patchy light rain with thunder.png';
    } else if (weatherStateName == 'Patchy light snow') {
      return 'assets/images/weatherState/day/Patchy light snow.png';
    } else if (weatherStateName == 'Patchy light snow with thunder') {
      return 'assets/images/weatherState/day/Patchy light snow with thunder.png';
    } else if (weatherStateName == 'Patchy moderate snow') {
      return 'assets/images/weatherState/day/Patchy moderate snow.png';
    } else if (weatherStateName == 'Patchy rain possible') {
      return 'assets/images/weatherState/day/Patchy rain possible.png';
    } else if (weatherStateName == 'Patchy sleet possible') {
      return 'assets/images/weatherState/day/Patchy sleet possible';
    } else if (weatherStateName == 'Patchy snow possible') {
      return 'assets/images/weatherState/day/Patchy snow possible';
    } else if (weatherStateName == 'Thundery outbreaks possible') {
      return 'assets/images/weatherState/day/Thundery outbreaks possible';
    } else if (weatherStateName == 'Torrential rain shower') {
      return 'assets/images/weatherState/day/Torrential rain shower.png';
    } else {
      return 'assets/images/clear.png';
    }
  }

  MaterialColor getColor() {
    if (weatherStateName == 'Sunny') {
      return Colors.amber;
      // جليد ابيض
    } else if (weatherStateName == 'Blizzard' ||
        weatherStateName == 'Blowing snow' ||
        weatherStateName == 'Heavy snow' ||
        weatherStateName == 'Heavy freezing drizzle' ||
        weatherStateName == 'Freezing drizzle' ||
        weatherStateName == 'Ice pellets' ||
        weatherStateName == 'Light freezing rain' ||
        weatherStateName == 'Light showers of ice pellets' ||
        weatherStateName == 'Light sleet' ||
        weatherStateName == 'Light snow showers' ||
        weatherStateName == 'Light snow' ||
        weatherStateName == 'Moderate or heavy sleet showers' ||
        weatherStateName == 'Moderate or heavy freezing rain' ||
        weatherStateName == 'Moderate or heavy sleet' ||
        weatherStateName == 'Moderate or heavy snow with thunder' ||
        weatherStateName == 'Moderate or heavy snow showers' ||
        weatherStateName == 'Moderate snow' ||
        weatherStateName == 'Overcast' ||
        weatherStateName == 'Partly cloudy' ||
        weatherStateName == 'Patchy freezing drizzle possible' ||
        weatherStateName == 'Patchy heavy snow' ||
        weatherStateName == 'Patchy light drizzle' ||
        weatherStateName == 'Patchy moderate snow' ||
        weatherStateName == 'Patchy sleet possible' ||
        weatherStateName == 'Patchy light snow' ||
        weatherStateName == 'Patchy snow possible') {
      return Colors.grey;
    } else if (weatherStateName == 'Cloudy' ||
        weatherStateName == 'Heavy rain at times' ||
        weatherStateName == 'Light rain shower' ||
        weatherStateName == 'Light sleet showers' ||
        weatherStateName == 'Light drizzle' ||
        weatherStateName == 'Moderate or heavy rain shower' ||
        weatherStateName == 'Moderate rain' ||
        weatherStateName == 'Moderate rain at times' ||
        weatherStateName == 'Freezing fog' ||
        weatherStateName == 'Fog' ||
        weatherStateName == 'Mist' ||
        weatherStateName == 'Moderate or heavy rain with thunder' ||
        weatherStateName == 'Patchy light rain with thunder' ||
        weatherStateName == 'Patchy light snow with thunder' ||
        weatherStateName == 'Thundery outbreaks possible' ||
        weatherStateName == 'Torrential rain shower' ||
        weatherStateName == 'Patchy light rain' ||
        weatherStateName == 'Patchy rain possible') {
      return Colors.blueGrey;
    }
    return Colors.lightBlue;
  }
}
