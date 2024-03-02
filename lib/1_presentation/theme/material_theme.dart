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
      elevatedButtonTheme: _elevatedButtonThemeData(swoleTheme),
      cardTheme: _cardTheme(swoleTheme),
      floatingActionButtonTheme: _floatingActionButtonThemeData(swoleTheme),
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

  static CardTheme _cardTheme(
    SwoleTheme swoleTheme,
  ) =>
      CardTheme(
        shadowColor: null,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: swoleTheme.radii.medium,
        ),
      );

  static FloatingActionButtonThemeData _floatingActionButtonThemeData(
    SwoleTheme swoleTheme,
  ) =>
      FloatingActionButtonThemeData(
        backgroundColor: swoleTheme.colors.element,
        foregroundColor: swoleTheme.colors.background,
      );
}
