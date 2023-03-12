import 'package:flutter/material.dart';
import 'package:project_bhidu/LandingPages/FirstScreen1.dart';
import 'package:project_bhidu/LandingPages/FirstScreen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(physics: AlwaysScrollableScrollPhysics(), children: [
        ScreenFirst_1(),
        ScreenFirst_2(),
      ]),
    );
  }
}
