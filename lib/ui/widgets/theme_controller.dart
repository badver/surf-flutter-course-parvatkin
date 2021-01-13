import 'package:flutter/material.dart';
import 'package:places/ui/screen/res/themes.dart';

final defaultTheme = lightTheme;

class ThemeController with ChangeNotifier {
  ThemeData _themeData;

  bool _isDark;

  // ignore: avoid_positional_boolean_parameters
  ThemeController({
    bool isDark = false,
  }) {
    _isDark = isDark;
    _setTheme();
  }

  ThemeData getTheme() => _themeData;

  bool get isDark => _isDark;

  void toDark() {
    _isDark = true;
    _setTheme();
  }

  void toLight() {
    _isDark = false;
    _setTheme();
  }

  void toggleTheme() {
    _isDark = !_isDark;
    _setTheme();
  }

  void _setTheme() {
    _themeData = _isDark ? darkTheme : lightTheme;
    notifyListeners();
  }
}
