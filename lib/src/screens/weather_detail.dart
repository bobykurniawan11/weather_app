import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:weather_app/src/models/weather_data.dart';
import 'package:weather_app/src/widgets/weather_tile.dart';

class WeatherDetail extends StatelessWidget {
  final WeatherData weatherData;

  const WeatherDetail({Key? key, required this.weatherData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Weather detail",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        Jiffy.unixFromSecondsSinceEpoch(weatherData.dt!)
                            .yMMMEd
                            .toString(),
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        Jiffy.unixFromSecondsSinceEpoch(weatherData.dt!)
                            .jm
                            .toString(),
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Hero(
                tag: weatherData.dt.toString(),
                child: CachedNetworkImage(
                  imageUrl:
                      "http://openweathermap.org/img/wn/${weatherData.weather![0].icon}@4x.png",
                  height: 250,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    capitalize(weatherData.weather![0].description!),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Temp(Min)"),
                      Text(
                        weatherData.main!.tempMin!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Temp(Max)"),
                      Text(
                        weatherData.main!.tempMax == "null"
                            ? "-"
                            : weatherData.main!.tempMax!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
