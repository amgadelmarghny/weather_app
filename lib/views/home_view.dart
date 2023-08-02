import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/weatherCubit/weather_cubit.dart';
import 'package:weather/bloc/weatherCubit/weather_state.dart';
import 'package:weather/views/search_view.dart';
import '../category/default_page.dart';
import '../category/succes_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialColor? colorThem;

    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {
        if (state is WeatherStateSucces) {
          colorThem =
              BlocProvider.of<WeatherCubit>(context).weatherModel!.getColor();
        } else {
          colorThem = Colors.blue;
        }
      },
      builder: (context, state) {
        if (state is WeatherStateLoading) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: colorThem,
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SearchPage();
                      }));
                    },
                    icon: const Icon(Icons.search),
                  ),
                ],
                title: const Text('Weather App'),
              ),
              body: const Center(
                child: CircularProgressIndicator(),
              ));
        } else if (state is WeatherStateSucces) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: colorThem,
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SearchPage();
                    }));
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
              title: const Text('Weather App'),
            ),
            body: SuccesBody(weatherData: state.weatherModel),
          );
        } else if (state is WeatherStateFailer) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: colorThem,
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SearchPage();
                    }));
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
              title: const Text('Weather App'),
            ),
            body: const Center(
                child: Text('Something went rong, Please try again')),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: colorThem,
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SearchPage();
                    }));
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
              title: const Text('Weather App'),
            ),
            body: const InitialBody(),
          );
        }
      },
    );
  }
}
