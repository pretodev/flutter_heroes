import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const primaryText = Color(0xFF1E272A);

  static const inputBg = Color(0xFFF5F5F5);
  static const inputTxt = Color(0xFF666666);
  static const primary = Color(0xFFE01E69);
  static const error = Color(0xFFEB5757);
}

ThemeData appTheme(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;
  return ThemeData(
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      textTheme: TextTheme(
        headline6: GoogleFonts.righteous(
          fontSize: 48.0,
          color: AppColors.primary,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        fixedSize: Size(48.0, 48.0),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.inputBg,
      hintStyle: GoogleFonts.rubik(
        fontSize: 18,
        fontWeight: FontWeight.w300,
        color: AppColors.inputTxt,
      ),
      labelStyle: GoogleFonts.rubik(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.inputTxt,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(4),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(4),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.error),
        borderRadius: BorderRadius.circular(4),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    toggleButtonsTheme: ToggleButtonsThemeData(
      borderColor: AppColors.primary,
      fillColor: AppColors.primary,
      borderRadius: BorderRadius.circular(4.0),
      textStyle: TextStyle(
        color: AppColors.primary,
      ),
    ),
    textTheme: textTheme.copyWith(
      bodyText1: GoogleFonts.rubik(fontWeight: FontWeight.w400),
      bodyText2: GoogleFonts.rubik(fontWeight: FontWeight.w300),
    ),
  );
}
