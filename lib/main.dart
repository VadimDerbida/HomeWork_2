import 'package:flutter/material.dart';
import 'package:homework_2/screen/planet_choose.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlanetChooseScreen()
    );
  }
}
