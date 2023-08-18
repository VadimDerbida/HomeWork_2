import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/colors.dart';
typedef PlanetButtonCallback = void Function();

class PlanetsButton extends StatelessWidget {
  final PlanetButtonCallback planetButtonCallback;
  const PlanetsButton({
    required this.planetButtonCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 48, right: 24, left: 24),
        child: ElevatedButton(
          onPressed: () {
            planetButtonCallback();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.saturatedBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0))),
          child: Text(
            "Planets",
            style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 10),
          ),
        ));
  }
}