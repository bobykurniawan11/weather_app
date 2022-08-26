import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:weather_app/src/index.dart';

import 'src/bloc/WeatherController.dart';

Future<void> main() async {
  Get.put(WeatherController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Astronacci Shop',
      theme: ThemeData(
        cardTheme: CardTheme(
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
        ),
        scaffoldBackgroundColor: Colors.white24,
      ),
      defaultTransition: Transition.native,
      home: Index(),
    ),
  );
}
