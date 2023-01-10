import 'package:flutter/material.dart';

import 'config.dart';

class ThemeConfig {
  static ThemeData theme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: ColorConfig.primary,
      onPrimary: ColorConfig.white,
      secondary: ColorConfig.secondary,
      onSecondary: ColorConfig.black,
      error: ColorConfig.red,
      onError: ColorConfig.white,
      background: ColorConfig.background,
      onBackground: ColorConfig.black,
      surface: ColorConfig.white,
      onSurface: ColorConfig.black,
    ),
  );
}
