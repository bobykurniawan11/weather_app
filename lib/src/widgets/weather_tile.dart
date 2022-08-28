import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:weather_app/src/models/weather_data.dart';

class WeatherTile extends StatelessWidget {
  final WeatherData weatherData;
  const WeatherTile({
    Key? key,
    required this.weatherData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        child: Hero(
          tag: weatherData.dt.toString(),
          child: CachedNetworkImage(
            imageUrl:
                "http://openweathermap.org/img/wn/${weatherData.weather![0].icon}.png",
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      title: Text(
        Jiffy.unixFromSecondsSinceEpoch(weatherData.dt!).yMMMEdjm.toString(),
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      dense: true,
      isThreeLine: true,
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            capitalize(weatherData.weather![0].description!),
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text("Temp : "),
              Text(
                weatherData.main!.temp!.toString() + " °C",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
