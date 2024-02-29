import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/swole_theme.dart';

@immutable
class AppTypography {
  static TextTheme textTheme(SwoleTheme theme) {
    final displayText = _defaultDisplayTextStyle(theme.colors.element);
    final headlineText = _defaultHeadlineTextStyle(theme.colors.element);
    final bodyText = _defaultBodyTextStyle(theme.colors.element);

    return TextTheme(
      displayLarge: displayText.copyWith(fontSize: 48),
      displayMedium: displayText.copyWith(fontSize: 32),
      displaySmall: displayText.copyWith(fontSize: 16),
      headlineLarge: headlineText.copyWith(fontSize: 32),
      headlineMedium: headlineText.copyWith(fontSize: 16),
      headlineSmall: headlineText.copyWith(fontSize: 12),
      bodyLarge: bodyText.copyWith(fontSize: 32),
      bodyMedium: bodyText.copyWith(fontSize: 16),
      bodySmall: bodyText.copyWith(fontSize: 12),
    );
  }

  static TextStyle _defaultDisplayTextStyle(Color textColor) => TextStyle(
        color: textColor,
        fontFamily: 'BebasNeue',
      );

  static TextStyle _defaultHeadlineTextStyle(Color textColor) => TextStyle(
        color: textColor,
        fontWeight: FontWeight.w700,
        fontFamily: 'Montserrat',
      );

  static TextStyle _defaultBodyTextStyle(Color textColor) => TextStyle(
        color: textColor,
        fontFamily: 'Montserrat',
      );
}
