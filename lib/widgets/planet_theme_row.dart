import 'package:flutter/material.dart';
import 'package:homework_2/util/colors.dart';
typedef planetClickCallBack = Function(Color);

class PlanetThemeRow extends StatelessWidget {
  final planetClickCallBack planetClickCallnack;
  const PlanetThemeRow({super.key,
  required this.planetClickCallnack});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: AppTheme.planetColors.map((planetColors) =>
        InkWell(
          onTap: () {
            planetClickCallnack( planetColors);
          },
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 3,), color: planetColors),
          
            ),
        ))
          .toList()
        ,
      ),
    );
  }
}