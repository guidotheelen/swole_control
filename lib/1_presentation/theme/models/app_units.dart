import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/constants/swole_units.dart';

@immutable
class AppUnits {
  const AppUnits._({
    required this.xs,
    required this.s,
    required this.m,
    required this.l,
    required this.xl,
    required this.xxl,
  });

  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double xxl;

  static const instance = AppUnits._(
    xs: SwoleUnits.xs,
    s: SwoleUnits.s,
    m: SwoleUnits.m,
    l: SwoleUnits.l,
    xl: SwoleUnits.xl,
    xxl: SwoleUnits.xxl,
  );
}
