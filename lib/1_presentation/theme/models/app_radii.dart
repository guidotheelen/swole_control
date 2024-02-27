import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/constants/swole_radii.dart';

@immutable
class AppRadii {
  const AppRadii._({
    required this.small,
    required this.medium,
    required this.large,
  });

  final BorderRadius small;
  final BorderRadius medium;
  final BorderRadius large;

  static const instance = AppRadii._(
    small: SwoleRadii.k5pxRadius,
    medium: SwoleRadii.k10pxRadius,
    large: SwoleRadii.k15pxRadius,
  );
}
