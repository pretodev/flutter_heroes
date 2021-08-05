import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const primaryText = Color(0xFF1E272A);

  static const primaryColor = Color(0xFFE01E69);
}

ThemeData appTheme = ThemeData(
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    textTheme: TextTheme(
      headline6: GoogleFonts.righteous(
        fontSize: 48.0,
        color: AppColors.primaryColor,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: AppColors.primaryColor,
      elevation: 0,
      shape: CircleBorder(),
      fixedSize: Size(48.0, 48.0),
    ),
  ),
);
