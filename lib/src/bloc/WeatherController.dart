import 'package:get/get.dart';
import 'package:weather_app/src/models/weather_data.dart';
import 'package:weather_app/src/services/api.dart';

class WeatherController extends GetxController {
  RxBool isLoading = true.obs;
  RxBool isError = false.obs;
  RxList<WeatherData> weatherData = <WeatherData>[].obs;

  getWeather() async {
    try {
      isLoading(true);
      update();
      var result = await Api().getWeather();
      weatherData(result);
      isLoading(false);
      update();
    } catch (e) {
      isError(false);
      isLoading(false);
      update();
      throw e;
    }
  }
}
