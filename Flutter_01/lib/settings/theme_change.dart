import 'package:flutter/material.dart';

// This class controls the theme of the whole app
class ThemeProvider extends ChangeNotifier {

  // Default theme = light
  bool isDarkMode = false;

  // Toggle theme
  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners(); // update UI everywhere
  }

  // Get current theme
  ThemeMode get themeMode =>
      isDarkMode ? ThemeMode.dark : ThemeMode.light;
}