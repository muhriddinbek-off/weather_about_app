import 'package:flutter/material.dart';
import 'package:weather_about_app/modal/provider_modal.dart';
import 'package:weather_about_app/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:weather_about_app/pages/switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SwitchOnOff>(
      create: (context) => SwitchOnOff(onchange: false),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/home-page",
          routes: {
            "/home-page": (context) => const HomePage(),
          },
        );
      },
    );
  }
}
