import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather/Service/weather_service.dart';
import 'package:weather/bloc/weatherCubit/weather_cubit.dart';
import 'package:weather/views/home_view.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => WeatherCubit(WeatherService()),
      child: const WeatherApp(),
    ),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: ThemeData(
      // primarySwatch: BlocProvider.of<WeatherCubit>(context).weatherModel ==
      //         null
      //     ? Colors.blue
      //     : BlocProvider.of<WeatherCubit>(context).weatherModel!.getColor()
      // ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
