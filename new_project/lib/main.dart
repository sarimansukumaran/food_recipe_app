import 'package:flutter/material.dart';

import 'package:new_project/view/bottomnavbar_screen/bottomnavbar_screen.dart';

import 'package:new_project/view/notifications/notifications.dart';
import 'package:new_project/view/profile_screen/profile_screen.dart';

import 'package:new_project/view/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: BottomnavbarScreen());
  }
}
