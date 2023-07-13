import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modal/weather_random.dart';
import '../providers/switch.dart';
import '../widgets/body_weather.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherModal? weatherModal;
  Future<WeatherModal>? func;
  WeatherModal weatherModalRandom = WeatherModal(datatime: '', tempmax: 5, tempmin: 4, temp: 2, humidity: 3, uvindex: 2, windspeed: 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Provider.of<SwitchOnOff>(context).isDay ? const Color(0xFF0084FF) : const Color(0xFF131313),
        drawer: const DrawerChange(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF131313),
          title: const Row(
            children: [
              Text('Samarqand', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
              Icon(Icons.location_on),
            ],
          ),
        ),
        body: const BodyWeather());
  }
}
