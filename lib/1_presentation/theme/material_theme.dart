import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/models/app_typography.dart';
import 'package:swole_control/1_presentation/theme/swole_theme.dart';

class MaterialTheme {
  static ThemeData get instance {
    const swoleTheme = SwoleTheme.instance;

    final colors = swoleTheme.colors;
    final textTheme = AppTypography.textTheme(swoleTheme);

    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: colors.background,
        textTheme: textTheme,
        floatingActionButtonTheme: _floatingActionButtonThemeData(swoleTheme),
        elevatedButtonTheme: _elevatedButtonThemeData(swoleTheme));
  }

  static FloatingActionButtonThemeData _floatingActionButtonThemeData(
    SwoleTheme swoleTheme,
  ) {
    return FloatingActionButtonThemeData(
      backgroundColor: swoleTheme.colors.element,
    );
  }

  static ElevatedButtonThemeData _elevatedButtonThemeData(
    SwoleTheme swoleTheme,
  ) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          swoleTheme.colors.element,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          swoleTheme.colors.background,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: swoleTheme.radii.medium,
          ),
        ),
      ),
    );
  }
}
