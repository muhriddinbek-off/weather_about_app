import 'package:flutter/material.dart';

class SwitchOnOff with ChangeNotifier {
  bool isDay = false;

  void changeStatus(bool status) {
    isDay = status;
    notifyListeners();
  }
}
