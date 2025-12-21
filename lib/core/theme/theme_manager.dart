import 'package:flutter/material.dart';

import 'color_pallete.dart';

abstract class ThemeManager {
  static ThemeData theme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: ColorPallete.primaryColor),
      titleTextStyle: TextStyle(
        fontFamily: 'Janna',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: ColorPallete.primaryColor,
      ),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontFamily: 'Janna',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: ColorPallete.generalTextColor,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Janna',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: ColorPallete.generalTextColor,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Janna',
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ColorPallete.generalTextColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Janna',
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ColorPallete.generalTextColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Janna',
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: ColorPallete.generalTextColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorPallete.primaryColor,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
