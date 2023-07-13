class WeatherModal {
  final String datatime;
  final num tempmax;
  final num tempmin;
  final num temp;
  final num humidity;
  final num uvindex;
  final num windspeed;
  WeatherModal({
    required this.datatime,
    required this.tempmax,
    required this.tempmin,
    required this.temp,
    required this.humidity,
    required this.uvindex,
    required this.windspeed,
  });
  factory WeatherModal.fromJson(Map data) {
    return WeatherModal(
      datatime: data['days'][0]['datetime'],
      tempmax: data['days'][0]['tempmax'],
      tempmin: data['days'][0]['tempmin'],
      temp: data['days'][0]['temp'],
      humidity: data['days'][0]["humidity"],
      uvindex: data['days'][0]['uvindex'],
      windspeed: data['days'][0]['windspeed'],
    );
  }
  Map toJson() {
    return {
      'datatime': datatime,
      'tempmax': tempmax,
      'tempmin': tempmin,
      'temp': temp,
      'humidity': humidity,
      'uvindex': uvindex,
      'windspeed': windspeed,
    };
  }
}
