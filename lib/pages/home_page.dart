import 'package:flutter/material.dart';
import 'package:weather_about_app/modal/weather_random.dart';
import 'package:weather_about_app/widgets/weather_time.dart';

import '../core/weather.dart';
import '../widgets/bottom_part.dart';
import '../widgets/week_info.dart';

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
        backgroundColor: const Color(0xFF131313),
        drawer: const Drawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF131313),
          title: Row(
            children: const [
              Text('Samarqand', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
              Icon(Icons.location_on),
            ],
          ),
        ),
        body: FutureBuilder(
          future: weatherRandom(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData) {
              return ListView(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${snapshot.data!.temp}', style: const TextStyle(fontSize: 70, fontWeight: FontWeight.w400, color: Colors.white)),
                      const Padding(padding: EdgeInsets.only(top: 24), child: Icon(Icons.circle_outlined, color: Colors.white, size: 17)),
                      Column(
                        children: [
                          const Icon(Icons.cloud, color: Colors.white, size: 52),
                          Text('${snapshot.data!.tempmin}° / ${snapshot.data!.tempmax}° Feels like ${snapshot.data!.humidity}°', style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.white, height: 1.8)),
                          Text(snapshot.data!.datatime, style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                  WeekInfo(title: 'TODAY', icons1: Icons.sunny, icons2: Icons.nightlight_round_sharp, level: '${snapshot.data!.humidity}', day: '${snapshot.data!.tempmin} / ${snapshot.data!.tempmax}°'),
                  const WeekInfo(title: 'FRIDAY', icons1: Icons.sunny, icons2: Icons.nightlight_round_sharp, level: '25', day: '19° / 25°'),
                  const WeekInfo(title: 'SATURDAY', icons1: Icons.cloud, icons2: Icons.thunderstorm, level: '40', day: '20° / 15°'),
                  const WeekInfo(title: 'SUNDAY', icons1: Icons.cloud, icons2: Icons.nights_stay, level: '11', day: '23° / 19°'),
                  const WeekInfo(title: 'MONDAY', icons1: Icons.sunny, icons2: Icons.cloud, level: '12', day: '20° / 25°'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                              minimumSize: const MaterialStatePropertyAll(Size(107, 30)),
                              backgroundColor: const MaterialStatePropertyAll(Color(0xFF1E1E1E)),
                            ),
                            onPressed: () {},
                            child: const Text('More', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700))),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      WeatherTime(color: Color.fromRGBO(254, 205, 31, 0.69), img: 'assets/images/1.png', title: 'SUNRISE', text: '6:51 am'),
                      WeatherTime(color: Color.fromRGBO(238, 76, 41, 0.51), img: 'assets/images/2.png', title: 'SUNSET', text: '5:50 pm'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BottomPart(image: 'assets/images/3.png', name: 'HUMIDITY', text: '${snapshot.data!.humidity}'),
                      BottomPart(image: 'assets/images/5.png', name: 'WIND', text: '${snapshot.data!.windspeed} km/h'),
                      BottomPart(image: 'assets/images/4.png', name: 'UV', text: '${snapshot.data!.uvindex}'),
                    ],
                  )
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 56),
                    alignment: Alignment.center,
                    child: const Text(
                      'Internetga ulanmagansiz. Iltimos ulanishni tekshirib ko\'ring',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Future<WeatherModal> son = weatherRandom();
                        setState(() {
                          func = son;
                        });
                      },
                      child: const Text('Qayta urinish')),
                ],
              );
            }
          },
        ));
  }
}
