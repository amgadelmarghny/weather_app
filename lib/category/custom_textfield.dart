import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/weatherCubit/weather_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    String? cityName;
    return TextField(
      onChanged: (data) {
        cityName = data;
      },
      onSubmitted: (data) async {
        cityName = data;

        blocBrovideMethod(context, cityName);
      },
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        label: const Text('search'),
        suffixIcon: GestureDetector(
          onTap: () async {
            blocBrovideMethod(context, cityName);
          },
          child: const Icon(Icons.search),
        ),
        border: const OutlineInputBorder(),
        hintText: 'Enter a city',
      ),
    );
  }

  void blocBrovideMethod(BuildContext context, String? cityName) {
    BlocProvider.of<WeatherCubit>(context).getWeather(cityName: cityName!);

    BlocProvider.of<WeatherCubit>(context).cityName = cityName;
    Navigator.pop(context);
  }
}
