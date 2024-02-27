import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/models/app_typography.dart';
import 'package:swole_control/1_presentation/theme/swole_theme.dart';

class MaterialTheme {
  static ThemeData get light {
    const swoleTheme = SwoleTheme.light;

    final colors = swoleTheme.colors;
    final textTheme = AppTypography.textTheme(swoleTheme);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: colors.primaryBackground,
      textTheme: textTheme,
      appBarTheme: _appBarTheme(swoleTheme, textTheme),
      floatingActionButtonTheme: _floatingActionButtonThemeData(swoleTheme),
    );
  }

  static ThemeData get dark {
    const swoleTheme = SwoleTheme.dark;

    final colors = swoleTheme.colors;
    final textTheme = AppTypography.textTheme(swoleTheme);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: colors.primaryBackground,
      textTheme: textTheme,
      appBarTheme: _appBarTheme(swoleTheme, textTheme),
      floatingActionButtonTheme: _floatingActionButtonThemeData(swoleTheme),
      elevatedButtonTheme: _elevatedButtonThemeData(swoleTheme),
    );
  }

  static AppBarTheme _appBarTheme(SwoleTheme swoleTheme, TextTheme textTheme) {
    return AppBarTheme(
      color: swoleTheme.colors.secondaryBackground,
      titleTextStyle: textTheme.displayMedium,
    );
  }

  static FloatingActionButtonThemeData _floatingActionButtonThemeData(
    SwoleTheme swoleTheme,
  ) {
    return FloatingActionButtonThemeData(
      foregroundColor: swoleTheme.colors.primaryButtonForeground,
      backgroundColor: swoleTheme.colors.primaryButtonBackground,
    );
  }

  static ElevatedButtonThemeData _elevatedButtonThemeData(
    SwoleTheme swoleTheme,
  ) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          swoleTheme.colors.primaryButtonBackground,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          swoleTheme.colors.primaryButtonForeground,
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
