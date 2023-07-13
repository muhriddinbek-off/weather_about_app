import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../modal/weather_random.dart';

class SwitchOnOff with ChangeNotifier {
  bool isDay = false;

  WeatherModal? weatherModal;

  void changeStatus(bool status) {
    isDay = status;
    notifyListeners();
  }

  Future<void> weatherRandom() async {
    Uri url = Uri.parse('https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/samarqand?unitGroup=metric&key=KDZABRSGRRQZJKMHHM4QABDL9&contentType=json');

    http.Response response = await http.get(url);

    Map data = jsonDecode(response.body);

    weatherModal = WeatherModal.fromJson(data);
  }
}
