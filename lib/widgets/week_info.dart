import 'package:flutter/material.dart';

class WeekInfo extends StatelessWidget {
  final String title;
  final IconData icons1;
  final IconData icons2;
  final String level;
  final String day;
  const WeekInfo({
    super.key,
    required this.title,
    required this.icons1,
    required this.icons2,
    required this.level,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 29, vertical: 7),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 45,
      width: 302,
      decoration: BoxDecoration(color: const Color.fromRGBO(49, 49, 49, 0.82), borderRadius: BorderRadius.circular(10), boxShadow: const [
        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25), offset: Offset(0, 3), spreadRadius: 4),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white)),
          Icon(icons1, color: Colors.white, size: 26),
          Icon(icons2, color: Colors.white, size: 26),
          Row(
            children: [
              const Icon(Icons.water_drop_outlined, color: Colors.white),
              Text(level, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white)),
            ],
          ),
          Text(day, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.white)),
        ],
      ),
    );
  }
}
