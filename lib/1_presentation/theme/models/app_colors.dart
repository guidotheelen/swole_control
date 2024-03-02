import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/constants/swole_colors.dart';

@immutable
class AppColors {
  const AppColors({
    required this.element,
    required this.background,
    required this.bad,
    required this.good,
    required this.empty,
  });

  final Color element;
  final Color background;
  final Color bad;
  final Color good;
  final Color empty;

  static const instance = AppColors(
    element: SwoleColors.darkGrey,
    background: SwoleColors.lightBlue,
    bad: SwoleColors.red,
    good: SwoleColors.lightGreen,
    empty: SwoleColors.white,
  );
}
