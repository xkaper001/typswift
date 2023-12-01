import 'package:flutter/material.dart';
import './constants/palette.dart';

class AppStyle {
  static ThemeData themeData = ThemeData(
    fontFamily: 'Relative',
    useMaterial3: true,
  );

  static TextTheme get _textTheme => themeData.textTheme;

  static TextTheme textTheme = _textTheme.copyWith(
    titleLarge: TextStyle(
      fontSize: 24,
      fontFamily: 'Relative',
      fontWeight: FontWeight.bold,
      color: Palette.black,
    ),
    titleMedium: TextStyle(
      fontSize: 22,
      fontFamily: 'Relative',
      fontWeight: FontWeight.bold,
      color: Palette.black,
    ),
    titleSmall: TextStyle(
      fontSize: 20,
      fontFamily: 'Relative',
      fontWeight: FontWeight.bold,
      color: Palette.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontFamily: 'Relative',
      fontWeight: FontWeight.bold,
      color: Palette.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontFamily: 'Relative',
      fontWeight: FontWeight.bold,
      color: Palette.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 20,
      fontFamily: 'Relative',
      fontWeight: FontWeight.normal,
      color: Palette.black,
    ),
    bodySmall: TextStyle(
      fontSize: 18,
      fontFamily: 'Relative',
      fontWeight: FontWeight.normal,
      color: Palette.black,
    ),
    labelMedium: TextStyle(
      fontSize: 18,
      fontFamily: 'Relative',
      fontWeight: FontWeight.normal,
      color: Palette.grey,
    ),
    labelSmall: TextStyle(
      fontSize: 16,
      fontFamily: 'Relative',
      fontWeight: FontWeight.normal,
      color: Palette.grey,
    ),
  );

  static ButtonStyle materialButtonStyle = ButtonStyle(
    fixedSize: MaterialStateProperty.all(const Size.fromHeight(50)),
    padding:
        MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 40)),
  );
}
