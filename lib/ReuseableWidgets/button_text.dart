import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonText extends StatelessWidget {
  final String text;
  const ButtonText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
          fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
    );
  }
}