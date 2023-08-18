import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework_2/util/colors.dart';

class TopicRow extends StatelessWidget {
  const TopicRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        margin: EdgeInsets.only(bottom: 9),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("1",
                  style:
                      GoogleFonts.revalia(fontSize: 24, color: AppTheme.blue),
                  textAlign: TextAlign.center),
              const VerticalDivider(),
              Text("Theme: ",
                  style: GoogleFonts.revalia(fontSize: 14),
                  textAlign: TextAlign.center),
              Text("Buttons ",
                  style: GoogleFonts.revalia(
                      fontSize: 14, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}
