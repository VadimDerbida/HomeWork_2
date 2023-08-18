import 'package:flutter/material.dart';

class PlanetView extends StatelessWidget {
  const PlanetView({
    super.key,
    required String planetImageUrl,
  }) : _planetImageUrl = planetImageUrl;

  final String _planetImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
          
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 35),
      decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 3)),
      child: Image.asset(_planetImageUrl)
    );
  }
}