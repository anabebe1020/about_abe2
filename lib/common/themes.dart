import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  /// Light theme
  static final light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blueGrey,
    textTheme: GoogleFonts.montserratTextTheme(
      const TextTheme(
        bodyText1: TextStyle(color: Colors.black54, fontSize: 32),
        bodyText2: TextStyle(color: Colors.black54, fontSize: 24),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.black54),
  );

  /// Dark theme
  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.lightBlue,
    textTheme: GoogleFonts.montserratTextTheme(
      const TextTheme(
        bodyText1: TextStyle(color: Colors.white, fontSize: 32),
        bodyText2: TextStyle(color: Colors.white, fontSize: 24),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.white54),
  );

  /// Other
  static const linkText =
      TextStyle(color: Color.fromARGB(255, 78, 168, 241), fontSize: 24);
}
