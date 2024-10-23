import 'package:aplicativodedoacoes/constants/colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      primaryColor: kColorApp,
      fontFamily: 'Urbanist',
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: kMaterialColorApp,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: kColorApp,
          textStyle: const TextStyle(
            fontFamily: 'Urbanist',
            color: Colors.white,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: kColorGray, // Cor de fundo
        hintStyle: const TextStyle(
          fontSize: 14,
          fontFamily: 'Urbanist',
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(
            color: kColorApp, // Cor da borda quando focado
            width: 1.0,
          ),
        ),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData();
  }
}
