import 'dart:math';

import 'package:flutter/material.dart';

class AppTheme {
  static const Color backgroundColor = Color(0xFF0E1937);
  static const Color blue = Color(0xFF003F5C);
  static const Color saturatedBlue = Color(0xFF3D5CAB);
  static const Color planet1 = Color(0xFFB7AB85);
  static const Color planet2 = Color(0xFF622B08);
  static const Color planet3 = backgroundColor;
  static const Color planet4 = Color(0xFF211EAD);
  static const Color planet5 = Color(0xFFDAA961);
  static const Color planet6 = Color.fromARGB(255, 0, 19, 105);

  static const planetImagesUrls = [
    'assets/images/earth.jpg',
    'assets/images/jupiter.jpg',
    'assets/images/mars.jpg',
    'assets/images/neptune.jpg',
    'assets/images/saturn.jpg',
    'assets/images/venus.jpg'
  ];
  static const planetColors = [
    planet1,
    planet2,
    planet3,
    planet4,
    planet5,
    planet6
  ];

  String generateRandomImage() {
    var random = Random();
    return planetImagesUrls[random.nextInt(planetImagesUrls.length)];
  }
}
