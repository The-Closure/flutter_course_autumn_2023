import 'package:flutter/material.dart';
import 'package:provider_test/theme/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData theme = lightMode;
  bool isDarkTheme = false;

  void switchingTheme() {
    if (isDarkTheme) {
      theme = darkMode;
    } else {
      theme = lightMode;
    }
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
