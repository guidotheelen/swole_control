import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/constants/swole_colors.dart';

@immutable
class AppColors {
  const AppColors({
    required this.element,
    required this.background,
  });

  final Color element;
  final Color background;

  static const instance = AppColors(
    element: SwoleColors.darkGrey,
    background: SwoleColors.lightBlue,
  );
}
