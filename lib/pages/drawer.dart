import 'package:flutter/material.dart';
import 'package:weather_about_app/pages/switch.dart';

class DrawerChange extends StatefulWidget {
  const DrawerChange({super.key});

  @override
  State<DrawerChange> createState() => _DrawerChangeState();
}

class _DrawerChangeState extends State<DrawerChange> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(color: Colors.amber, child: DrawerHeader(child: SwitchOnOff(onchange: false))),
        ],
      ),
    );
  }
}
