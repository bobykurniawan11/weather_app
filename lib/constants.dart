class WeatherApiURL {
  static const DEFAULTLATITUDE = "-6.175115064391812";
  static const DEFAULTLONGITUDE = "106.82708842419382";
  static const APIKEY = "bb76367f3122b2e040fde0967d19684c";

  static const url = "https://api.openweathermap.org/data/2.5/forecast?lat=" +
      DEFAULTLATITUDE +
      "&lon=" +
      DEFAULTLONGITUDE +
      "&appid=" +
      APIKEY;
}
