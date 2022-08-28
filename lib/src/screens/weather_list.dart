import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/src/bloc/WeatherController.dart';
import 'package:weather_app/src/screens/weather_detail.dart';
import 'package:weather_app/src/widgets/weather_tile.dart';

class WeatherList extends StatefulWidget {
  const WeatherList({Key? key}) : super(key: key);

  @override
  State<WeatherList> createState() => _WeatherListState();
}

class _WeatherListState extends State<WeatherList> {
  WeatherController weatherController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherController>(
      builder: (ctrl) {
        return ListView.separated(
          separatorBuilder: (a, b) => Divider(
            color: Colors.black,
            thickness: 1,
          ),
          itemCount: weatherController.weatherData.length,
          reverse: true,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Get.to(
                  WeatherDetail(
                    weatherData: weatherController.weatherData[index],
                  ),
                );
              },
              child: WeatherTile(
                weatherData: weatherController.weatherData[index],
              ),
            );
          },
        );
      },
    );
  }
}
