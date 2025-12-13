import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }

  // Define Colors based on theme
  Color get bottomContainerColor => const Color(0xFFEB1555);

  Color get activeCardColor =>
      isDarkMode ? const Color(0xFF1D1E33) : const Color(0xFFE0E0E0);

  Color get inactiveCardColor =>
      isDarkMode ? const Color(0xFF111328) : const Color(0xFFF5F5F5);

  Color get labelTextColor =>
      isDarkMode ? const Color(0xFF8D8E98) : const Color(0xFF505050);

  Color get roundIconButtonColor =>
      isDarkMode ? const Color(0xFF4C4F5E) : const Color(0xFFE0E0E0);

  Color get sliderInactiveTrackColor =>
      isDarkMode ? const Color(0xFF8D8E98) : const Color(0xFF8D8E98);

  Color get sliderActiveTrackColor =>
      isDarkMode ? Colors.white : const Color(0xFFEB1555);

  Color get resultTextColor => const Color(0xFF24D876);
}
