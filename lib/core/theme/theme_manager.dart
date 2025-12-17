import 'package:flutter/material.dart';

import 'color_pallete.dart';

abstract class ThemeManager {
  static ThemeData theme = ThemeData(
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
