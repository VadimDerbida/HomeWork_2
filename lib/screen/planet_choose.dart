import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework_2/util/colors.dart';
import 'package:homework_2/widgets/planet_theme_row.dart';
import 'package:homework_2/widgets/planets_button.dart';
import 'package:homework_2/widgets/topic_row.dart';

import '../widgets/planet_view.dart';

class PlanetChooseScreen extends StatefulWidget {
  const PlanetChooseScreen({super.key});

  @override
  State<PlanetChooseScreen> createState() => _PlanetChooseScreenState();
}


class _PlanetChooseScreenState extends State<PlanetChooseScreen> {
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;
  String _planetImageUrl = 'assets/images/earth.jpg';
  Color _background = AppTheme.backgroundColor;
  

  void _generateNewPlanet() {
    setState(() {
      _changeCrossAxisAligment();
      _changePlanetBackgroundColor();
    });
  }

  void checkAnswer(Color color){
    setState(() {
      _background = color;
    });
  }

  void _changePlanetBackgroundColor() {
    _planetImageUrl = AppTheme().generateRandomImage();
  }

  void _changeCrossAxisAligment() {
    _crossAxisAlignment = _crossAxisAlignment == CrossAxisAlignment.start
        ? CrossAxisAlignment.end
        : CrossAxisAlignment.start;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:_background,
        elevation: 0,
      ),
      backgroundColor:_background,
      body: Column(
        crossAxisAlignment: _crossAxisAlignment,
        children: [
          const TopicRow(),
          PlanetsButton(
            planetButtonCallback: () {
              _generateNewPlanet();
            },
          ),
          PlanetView(planetImageUrl: _planetImageUrl),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 48, bottom: 34),
              child: Text(
                'Color themes',
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: 20),
                textAlign: TextAlign.center,
              )),
          PlanetThemeRow(
            planetClickCallnack: (color) {
              checkAnswer(color);
            },
          )
        ],
      ),
    );
  }
}
