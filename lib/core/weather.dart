import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modal/weather_random.dart';

Future<WeatherModal> weatherRandom() async {
  Uri url = Uri.parse('https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/samarqand?unitGroup=metric&key=KDZABRSGRRQZJKMHHM4QABDL9&contentType=json');

  http.Response response = await http.get(url);

  Map data = jsonDecode(response.body);

  return WeatherModal.fromJson(data);
}
