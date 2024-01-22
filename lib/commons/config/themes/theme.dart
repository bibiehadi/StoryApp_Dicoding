import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color.fromARGB(255, 181, 211, 211);
const Color secondaryColor = Color.fromARGB(255, 18, 121, 116);
const Color thirdColor = Color.fromARGB(255, 255, 255, 255);

const defaultPadding = 20.0;
const listMargin = 20.0;
const headerHeight = 120.0;

final TextTheme myTextTheme = TextTheme(
  displayLarge: GoogleFonts.montserrat(
      fontSize: 92, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  displayMedium: GoogleFonts.montserrat(
      fontSize: 57, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  displaySmall:
      GoogleFonts.montserrat(fontSize: 46, fontWeight: FontWeight.w400),
  headlineMedium: GoogleFonts.montserrat(
      fontSize: 32, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headlineSmall:
      GoogleFonts.montserrat(fontSize: 23, fontWeight: FontWeight.w400),
  titleLarge: GoogleFonts.montserrat(
      fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleMedium: GoogleFonts.montserrat(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  titleSmall: GoogleFonts.montserrat(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.montserrat(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.montserrat(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  bodySmall: GoogleFonts.montserrat(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  labelLarge: GoogleFonts.montserrat(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  labelSmall: GoogleFonts.montserrat(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
