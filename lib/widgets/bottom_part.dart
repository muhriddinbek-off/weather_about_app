import 'package:flutter/material.dart';

class BottomPart extends StatelessWidget {
  final String image;
  final String name;
  final String text;
  const BottomPart({
    super.key,
    required this.image,
    required this.name,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 15),
      padding: const EdgeInsets.symmetric(vertical: 7),
      height: 84,
      width: 93,
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(image),
          Text(name, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white)),
          Text(text, style: const TextStyle(fontSize: 7, fontWeight: FontWeight.w700, color: Colors.white)),
        ],
      ),
    );
  }
}
