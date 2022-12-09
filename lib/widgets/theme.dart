import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightThemeData => ThemeData(
      primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black)));

  static ThemeData get darkThemeData => ThemeData(
      primarySwatch: Colors.deepOrange,
      primaryTextTheme: GoogleFonts.latoTextTheme());
}
