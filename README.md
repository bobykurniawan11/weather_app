
## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/bobykurniawan11/weather_app.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```


### Libraries & Tools Used
* [Dio](https://pub.dev/packages/dio)
* [get](https://pub.dev/packages/get)
* [cached_network_image](https://pub.dev/packages/cached_network_image)
* [jiffy](https://pub.dev/packages/jiffy)


### Flutter Version
```
Flutter 3.0.1 • channel stable • https://github.com/flutter/flutter.git
Framework • revision fb57da5f94 (3 months ago) • 2022-05-19 15:50:29 -0700
Engine • revision caaafc5604
Tools • Dart 2.17.1 • DevTools 2.12.2
```

### OpenWeatherApi
```
//Just in case the api key not working, you can change it  you can change it in constants.dart file


class WeatherApiURL {
  static const DEFAULTLATITUDE = "-6.175115064391812";
  static const DEFAULTLONGITUDE = "106.82708842419382";
  static const APIKEY = "bb76367f3122b2e040fde0967d19684c";

  static const url = "https://api.openweathermap.org/data/2.5/forecast?lat=" +
      DEFAULTLATITUDE +
      "&units=metric&lon=" +
      DEFAULTLONGITUDE +
      "&appid=" +
      APIKEY;
}

```