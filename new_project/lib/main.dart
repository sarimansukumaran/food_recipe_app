import 'package:flutter/material.dart';
//import 'package:new_project/view/homescreen/homescreen.dart';
import 'package:new_project/view/onbody_screen/onbody_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnbodyScreen(),
    );
  }
}
