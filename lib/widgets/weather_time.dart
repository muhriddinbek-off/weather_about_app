import 'package:flutter/material.dart';

class WeatherTime extends StatelessWidget {
  final Color color;
  final String img;
  final String title;
  final String text;
  const WeatherTime({
    super.key,
    required this.color,
    required this.img,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 132,
      width: 141,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(img),
          Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white)),
          Text(text, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.white)),
        ],
      ),
    );
  }
}
