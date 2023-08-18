import 'package:flutter/material.dart';

class AppTheme {
  static const String light = 'light';
  static const String dark = 'dark';
  static const String system = 'system';

  ThemeData getTheme(String theme) {
    switch (theme) {
      case light:
        return ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,
        );
      case dark:
        return ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
        );
      default:
        return ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
        );
    }
  }
}
