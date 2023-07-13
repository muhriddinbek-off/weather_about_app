// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class SwitchOnOff extends StatelessWidget with ChangeNotifier {
//   bool onchange = false;

//   bool status = false;

//   void changeStatus(bool status) {
//     this.status = status;
//     notifyListeners();
//   }

//   SwitchOnOff({super.key, required this.onchange});

//   @override
//   Widget build(BuildContext context) {
//     return Switch(value: onchange, onChanged: Provider.of(context, listen: false).changeStatus(false));
//   }
// }
