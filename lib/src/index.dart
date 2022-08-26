import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/src/bloc/WeatherController.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  WeatherController weatherController = Get.find();

  @override
  void initState() {
    weatherController.getWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Weather App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(4),
        child: Container();
      ),
    );
  }
}